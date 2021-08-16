<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Events;
use App\Models\Clubs;
use App\Models\Follow_Events;
use App\Models\Event_Photos;
use File;

class EventController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
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
        $request->validate([
          'cover_photo' =>'required|mimes:png,jpg,jpeg|max:9048',
        ]);

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
       $error= $request->validate([
           'event_date' => 'required',
           'event_name' => 'required',
           'description' => 'required',
           'cover_photo' =>'mimes:png,jpg,jpeg|max:9048',
           'about_image' =>'mimes:png,jpg,jpeg|max:9048',
           'photos.*' => 'mimes:png,jpg,jpeg|max:5048'    
        ]);

        $event = Events::find($id);
        
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
