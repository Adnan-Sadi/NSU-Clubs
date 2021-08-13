<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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

        return view('profile')->with('user',$user);
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
        $user = User::where('id',$id)->update([
            'nsu_id' => $request->input('nsu_id'),
            'name' => $request->input('name'),
            'email' => $request->input('email'),
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
        $request->validate([
          'prof_image' =>'required|mimes:png,jpg,jpeg|max:5048',
        ]);

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
