<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\facades\DB;
use Illuminate\Support\facades\Mail;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Events;
use App\Models\Clubs;
use App\Models\Follow_Events;
use App\Models\Follow_Clubs;
use App\Models\Event_Photos;
use App\Mail\newEventMail;
use File;

class EventController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth', ['except' => ['show']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules =array(
          'title' => ['required','max:255'],
          'description' => ['required'],
          'event_date' => ['required'],
          'start_at' => ['required'],
          'end_at' => ['required'],
          'cover_photo' =>['required','mimes:png,jpg,jpeg','max:9048'],
        );

        $error=Validator::make($request->all(), $rules);

        if ($error->fails()) {
        return redirect('/home/'.$request->club_id.'/events')
                    ->withErrors($error)
                    ->withInput();
        }

        $newImageName = time(). '-'. $request->title .'.'. $request->cover_photo->extension();
        $request->cover_photo->move(public_path('images/Event Covers'),$newImageName);

        $event = Events::create([
         'club_id' => $request->input('club_id'),
         'event_name' => $request->input('title'),
         'event_description' => $request->input('description'),
         'event_date' => $request->input('event_date'),
         'start_at' => $request->input('start_at'),
         'end_at' => $request->input('end_at'),
         'cover_photo' => $newImageName
        ]);

        /**sending email notification to club followers */
        $users = DB::table('users')
                        ->join('follow_clubs', 'users.id', '=','follow_clubs.user_id')
                        ->select('users.*','follow_clubs.club_id')
                        ->where('follow_clubs.club_id','=',$request->input('club_id'))
                        ->get();

        foreach ($users as $user) {
            Mail::to($user->email)->queue(new newEventMail($request->input('club_id'),$event->event_id));
        }
        /**sending email notification to club followers */

        return redirect('/home/'.$request->club_id.'/events');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $event = Events::with('clubs')->find($id);
        $photos = $event->event_photos()->where('event_id',$id)->get();//getting photos
  
        return view ('singleEvent')->with('event',$event)->with('photos',$photos);
    }

    /**
     * Follow Event
     *
     * 
     */
    public function follow($id)
    {
        $userId = auth()->user()->id;//getting userId

        $follow= Follow_Events::create([
          "user_id" => $userId,
          "event_id"=> $id
        ]);

    }

    public function unfollow($id)
    {
        $userId = auth()->user()->id;//getting userId

        $follow = Follow_Events::where('user_id',$userId)->where('event_id',$id);
        
        $follow->delete();

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $event = Events::with('clubs')->find($id);

        return view('editEvent')->with('event',$event);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $rules= array(
           'event_date' => ['required'],
           'event_name' => ['required'],
           'description' => ['required'],
           'cover_photo' =>['mimes:png,jpg,jpeg','max:9048'],
           'about_image' =>['mimes:png,jpg,jpeg','max:9048'],
           'photos.*' => ['mimes:png,jpg,jpeg','max:5048']    
        );

        $event = Events::find($id);

        $error=Validator::make($request->all(), $rules);

        if ($error->fails()) {
        return redirect('/event/'.$event->event_id.'/edit')
                    ->withErrors($error)
                    ->withInput();
        }
      
        //if background image is updated
        if($request->hasfile('cover_photo')){

            if(File::exists(public_path('images/Event Covers/'.$event->cover_photo))){
            File::delete(public_path('images/Event Covers/'.$event->cover_photo));
            }//Delete previous picture from storage

          $newImageName = time(). '-'. $request->event_name .'.'. $request->cover_photo->extension();
          $request->cover_photo->move(public_path('images/Event Covers'),$newImageName);
          
          $event->update([
             'cover_photo' => $newImageName
          ]);
        }

        //if about image is updated
        if($request->hasfile('about_image')){

            if(File::exists(public_path('images/Event Photos/'.$event->about_image))){
            File::delete(public_path('images/Event Photos/'.$event->about_image));
            }//Delete previous picture from storage

          $newImageName = time(). '-'. $request->event_name .'.'. $request->about_image->extension();
          $request->about_image->move(public_path('images/Event Photos'),$newImageName);
          
          $event->update([
             'about_image' => $newImageName
          ]);
        }
        
        //if event photos are added
        if($request->hasfile('photos')){

          foreach ($request->photos as $photo) {
            $newImageName = time(). '-'. $request->event_name .'.'. $photo->extension();
            $photo->move(public_path('images/Event Photos'),$newImageName);

            Event_Photos::create([
                "event_id" => $event->event_id,
                "path"=> $newImageName
            ]);
          }
          
        }

        $event->update([
             'event_name' => $request->input('event_name'),
             'event_description' => $request->input('description'),
             'event_date' => $request->input('event_date'),
        ]);

        return redirect('/event/'.$event->event_id.'/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $event = Events::find($id);

        if(File::exists(public_path('images/Event Covers/'.$event->cover_photo))){
            File::delete(public_path('images/Event Covers/'.$event->cover_photo));
        }//Delete previous picture from storage

        
        $club_id = $event->club_id;
        $event->delete();
        return redirect('/home/'.$club_id.'/events');        
    }
}
