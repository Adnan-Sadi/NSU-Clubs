<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Clubs;
use App\Models\Notices;
use Illuminate\Support\facades\DB;
use Carbon\Carbon;

class HomePageController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index','show']]); 
    }
    
    /** Display Home Page */
    public function index()
    {
        $clubs = Clubs::all();
        $current = Carbon::today()->format('Y-m-d');
        
        $events = DB::table('events')->where('event_date', ">" , $current)
                      ->orderBy('event_date','asc')->limit(3)->get(); // get most recent 3 events

        return view('home')->with('clubs',$clubs)->with('events',$events);
    }

    /** Display Club Page */
    public function show($id)
    {
        $club = Clubs::find($id);
        $notices = $club->notices()->where('club_id',$id)->orderBy('created_at', 'desc')->get();//getting notices

        //Check if user is following a club
        if(auth()->user()){
            $userId = auth()->user()->id;//getting userId
            $follows = DB::table('follow_clubs')->where('user_id','=',$userId)->get();
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

        return view('clubPage')->with('club',$club)->with('notices',$notices)->with('follows',$follows)->with('manages',$manages);
    }

 

}
