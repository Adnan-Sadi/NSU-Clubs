<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Clubs;
use App\Models\Notices;
use Illuminate\Support\facades\DB;
use Carbon\Carbon;

class HomePageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     * 
     */

    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index','show']]); 
    }

    public function index()
    {
        $clubs = Clubs::all();
        $current = Carbon::today()->format('Y-m-d');
        
        $events = DB::table('events')->where('event_date', ">" , $current)->orderBy('event_date','asc')->limit(3)->get();

        return view('home')->with('clubs',$clubs)->with('events',$events);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $club = Clubs::find($id);
        $notices = $club->notices()->where('club_id',$id)->get();//getting notices

        if(auth()->user()){
            $userId = auth()->user()->id;//getting userId
            $follows = DB::table('follow_clubs')->where('user_id','=',$userId)->get();
        }
        else{
            $follows = null; //if user is not logged in
        }

        return view('clubPage')->with('club',$club)->with('notices',$notices)->with('follows',$follows);
    }

 

}
