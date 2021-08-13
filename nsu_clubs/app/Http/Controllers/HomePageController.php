<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Clubs;

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
        return view('home')->with('clubs',$clubs);
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
