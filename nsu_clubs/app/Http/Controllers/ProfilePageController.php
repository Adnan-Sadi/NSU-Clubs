<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use File;

class ProfilePageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
        $userId = auth()->user()->id;//getting userId
        $user = User::find($userId);//getting user informations

        /**getting the clubs followed by the user */
        $clubs_followed = DB::table('users')
                                ->join('follow_clubs', 'users.id', '=','follow_clubs.user_id')
                                ->join('clubs', 'follow_clubs.club_id', '=','clubs.id')
                                ->select('users.id','follow_clubs.club_id','clubs.*')
                                ->where('users.id','=',$userId)
                                ->get();
        /**getting the clubs followed by the user */
        
        /**getting the events followed by the user */
        $events_followed = DB::table('users')
                                ->join('follow_events', 'users.id', '=','follow_events.user_id')
                                ->join('events', 'follow_events.event_id', '=','events.event_id')
                                ->select('users.id','follow_events.event_id','events.*')
                                ->where('users.id','=',$userId)
                                ->get();
        /**getting the events followed by the user */

        return view('profile')->with('user',$user)->with('clubs_followed',$clubs_followed)->with('events_followed',$events_followed);
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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
            'name' => ['string', 'max:255'],
            'nsu_id' =>['integer','max:9999999999','nullable'],
            'phone_num'=>['string', 'max:255','nullable'],
        );
        
        $error=Validator::make($request->all(), $rules);

        if ($error->fails()) {
        return redirect('/profile')
                    ->withErrors($error,'desc_error')
                    ->withInput();
        }

        $user = User::where('id',$id)->update([
            'nsu_id' => $request->input('nsu_id'),
            'name' => $request->input('name'),
            'phone_num' => $request->input('phone_num')
        ]);

        return redirect('/profile');
    }
    /**
     * Update profile picture
     * 
     */

    public function update_image(Request $request, $id)
    {
        $rules = array(
            'prof_image' => ['required', 'mimes:png,jpg,jpeg','max:5048'],
        );

        $error=Validator::make($request->all(), $rules);

        if ($error->fails()) {
        return redirect('/profile')
                    ->withErrors($error,'image_error')
                    ->withInput();
        }

        $user = User::find($id);

        if(File::exists(public_path('images/Profile Pictures/'.$user->prof_image))){
            File::delete(public_path('images/Profile Pictures/'.$user->prof_image));
        }//Delete previous picture from storage


        $newImageName = time(). '-'. $id .'.'. $request->prof_image->extension();
        
        $request->prof_image->move(public_path('images/Profile Pictures'),$newImageName);

        $user = User::where('id',$id)->update([
            'prof_image' => $newImageName
        ]);

        return redirect('/profile');
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
