<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Clubs;
use Illuminate\Support\facades\DB;
use Carbon\Carbon;

class HomePageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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

        return view('DummyClub')->with('club',$club);
    }

 

}
