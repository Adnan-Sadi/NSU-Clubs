<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Members;
use DataTables;

class MembersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
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
        $rules = array(
            'name' => ['required', 'string', 'max:64'],
            'nsu_id'=> ['required', 'integer'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'phone_num' => ['required', 'string', 'max:15'],
            'position' => ['required', 'string', 'max:30'],
            'join_date' => ['required']
        );

        $error = Validator::make($request->all(), $rules);

        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $member = Members::create([
         'club_id' => $request->input('club_id'),
         'dept_id' => $request->input('dept_id'),
         'name' => $request->input('name'),
         'nsu_id' => $request->input('nsu_id'),
         'email' => $request->input('email'),
         'phone_num' => $request->input('phone_num'),
         'position' => $request->input('position'),
         'join_date' => $request->input('join_date'),
        ]);

        return response()->json(['success' => 'Data Added successfully.']);

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
        if(request() -> ajax()){
            $data = Members::find($id);

            return response()->json(['result' => $data]);
        }
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
            'name' => ['required', 'string', 'max:64'],
            'nsu_id'=> ['required', 'integer'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'phone_num' => ['required', 'string', 'max:15'],
            'position' => ['required', 'string', 'max:30'],
            'join_date' => ['required']
        );

        $error = Validator::make($request->all(), $rules);

        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $member = Members::where('m_id',$id)->update([
         'dept_id' => $request->input('dept_id'),
         'name' => $request->input('name'),
         'nsu_id' => $request->input('nsu_id'),
         'email' => $request->input('email'),
         'phone_num' => $request->input('phone_num'),
         'position' => $request->input('position'),
         'join_date' => $request->input('join_date'),
        ]);

        return response()->json(['success' => 'Data Updated successfully.']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $member = Members::find($id);
        $member->delete();
    }
}
