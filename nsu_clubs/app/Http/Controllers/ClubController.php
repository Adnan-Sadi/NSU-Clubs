<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\facades\DB;
use App\Models\Clubs;
use App\Models\Members;
use App\Models\Departments;
use App\Models\Follow_Events;
use App\Models\Club_Managers;
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
    public function create()
    {
        //
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
        
         return view ('allEvents')->with('club',$club)->with('follows',$follows);
    }

    /**
     * Display the club members
 
     */
    public function show_members($id,Request $request)
    {
        if($request->ajax()){
            //$data = Members::where('club_id',$id);
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

        if(auth()->user()){
         $userId = auth()->user()->id;//getting userId
         $manager = DB::table('club_managers')->where('user_id',$userId)->where('club_id',$id)->get();// check if user is a manager of the club
        }
        else{
         $manager = collect();
        }
        

        if($manager->isNotEmpty()){
            $manages = 1;     
        }
        else{
            $manages = 0; 
        }

        $departments= Departments::all();

        return view('members')->with('club_id',$id)->with('departments',$departments)->with('manages',$manages);

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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
