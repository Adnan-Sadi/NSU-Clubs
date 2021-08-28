<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\facades\DB;
use Illuminate\Support\facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Models\Clubs;
use App\Models\Members;
use App\Models\Departments;
use App\Models\Follow_Events;
use App\Models\Follow_Clubs;
use App\Models\Club_Managers;
use App\Models\Notices;
use App\Mail\newNoticeMail;
use File;
use DataTables;

class ClubController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth', ['except' => ['show_events','show_members']]); 
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
    public function create_notice($id,Request $request)
    {
        $rules = array(
            'title' => ['required', 'string'],
            'description' => ['required', 'string', 'max:1024'],
        );

        $error = Validator::make($request->all(), $rules);

        if ($error->fails()) {
        return redirect('/home/' . $request->club_id)
                    ->withErrors($error,'notice_errors')
                    ->withInput();
        }
     
        $notice = Notices::create([
         'club_id' => $request->input('club_id'),
         'title' => $request->input('title'),
         'description' => $request->input('description'),
        ]);

        $users = DB::table('users')
                        ->join('follow_clubs', 'users.id', '=','follow_clubs.user_id')
                        ->select('users.*','follow_clubs.club_id')
                        ->where('follow_clubs.club_id','=',$request->input('club_id'))
                        ->get();

        foreach ($users as $user) {
            Mail::to($user->email)->queue(new newNoticeMail($request->input('club_id'),$notice->notice_id));
        }

        return redirect('/home/' . $request->club_id);
        
    }

    public function follow($id)
    {
        $userId = auth()->user()->id;//getting userId

        $follow= Follow_Clubs::create([
          "user_id" => $userId,
          "club_id"=> $id
        ]);

    }

    public function unfollow($id)
    {
        $userId = auth()->user()->id;//getting userId

        $follow = Follow_Clubs::where('user_id',$userId)->where('club_id',$id);
        
        $follow->delete();

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the club events
 
     */
    public function show_events($id)
    {
        $club = Clubs::find($id);

        if(auth()->user()){
            $userId = auth()->user()->id;//getting userId
            $follows = DB::table('follow_events')->where('user_id','=',$userId)->get();
        }
        else{
            $follows = null; //if user is not logged in
        }

        /***  Check if the user is a Admin of the club */
        if(auth()->user()){
         $userId = auth()->user()->id;//getting userId
         $manager = DB::table('club_managers')->where('user_id',$userId)->where('club_id',$id)->get();// check if user is a manager of the club
        }
        else{
         $manager = collect(); // empty collection
        }
        

        if($manager->isNotEmpty()){
            $manages = 1;     
        }
        else{
            $manages = 0; 
        }
        /***  Check if the user is a Admin of the club */
        
         return view ('allEvents')->with('club',$club)->with('follows',$follows)->with('manages',$manages);
    }

    /**
     * Display the club members
 
     */
    public function show_members($id,Request $request)
    {
        $executives = DB::table('members')
                ->join('executive__members', 'members.m_id', '=','executive__members.m_id')
                ->where('club_id','=',$id)
                ->select('members.*','executive__members.photo')
                ->get(); // get executive members

        if($request->ajax()){

          $data = DB::table('members')
                      ->join('departments', 'members.dept_id', '=', 'departments.dept_id')
                      ->where('club_id','=',$id)
                      ->select('members.*','departments.dept_name')
                      ->get();
          
            
            return DataTables::of($data)
                      ->addColumn('action', function($data){
                          $button = '<button type="button" name="edit" id="'.$data->m_id.'" class="edit btn btn-primary btn-sm">Edit</button>';
                          $button .= '&nbsp;&nbsp;&nbsp;<button type="button" name="edit" id="'.$data->m_id.'" class="delete btn btn-danger btn-sm">Delete</button>';
                          return $button;
                      })
                      ->rawColumns(['action']) //protects from XSS attack for columns containing html content
                      ->make(true);
        }
        
        /***  Check if the user is a Admin of the club */
        if(auth()->user()){
         $userId = auth()->user()->id;//getting userId
         $manager = DB::table('club_managers')->where('user_id',$userId)->where('club_id',$id)->get();// check if user is a manager of the club
        }
        else{
         $manager = collect(); // empty collection
        }
        

        if($manager->isNotEmpty()){
            $manages = 1;     
        }
        else{
            $manages = 0; 
        }
        /***  Check if the user is a Admin of the club */

        $departments= Departments::all();

        return view('members')->with('executives',$executives)->with('club_id',$id)->with('departments',$departments)->with('manages',$manages);

    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        $rules = array(
            'description' => ['required', 'string'],
            'logo' => ['mimes:png,jpg,jpeg','max:5048'],
            'cover_photo' => ['mimes:png,jpg,jpeg','max:9048']
        );

        $error = Validator::make($request->all(), $rules);

        if ($error->fails()) {
        return redirect('/home/' . $id)
                    ->withErrors($error,'club_errors')
                    ->withInput();
        }

        $club = Clubs::find($id);
        
        //if Logo is updated
        if($request->hasfile('logo')){

            if(File::exists(public_path('images/Club Logos/'.$club->logo))){
            File::delete(public_path('images/Club Logos/'.$club->logo));
            }//Delete previous picture from storage

          $newImageName = time(). '-'. $club->club_name .'.'. $request->logo->extension();
          $request->logo->move(public_path('images/Club Logos'),$newImageName);
          
          $club->update([
             'logo' => $newImageName
          ]);
        }

        //if background image is updated
        if($request->hasfile('cover_photo')){

            if(File::exists(public_path('images/Club Covers/'.$club->cover_photo))){
            File::delete(public_path('images/Club Covers/'.$club->cover_photo));
            }//Delete previous picture from storage

          $newImageName = time(). '-'. $club->club_name .'.'. $request->cover_photo->extension();
          $request->cover_photo->move(public_path('images/Club Covers'),$newImageName);
          
          $club->update([
             'cover_photo' => $newImageName
          ]);
        }
        
        $club->update([
          'Description' => $request->input('description'),
        ]);

        return redirect('/home/' . $id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $notice = Notices::find($id);

        $notice->delete();

        return redirect()->back();
    }
}
