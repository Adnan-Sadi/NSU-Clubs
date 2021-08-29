<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Members;
use DataTables;

class MembersController extends Controller
{


    /** Store a new member */
    public function store(Request $request)
    {
        //Validation Rules
        $rules = array(
            'name' => ['required', 'string', 'max:64'],
            'nsu_id'=> ['required', 'integer'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'phone_num' => ['required', 'string', 'max:15'],
            'position' => ['required', 'string', 'max:30'],
            'join_date' => ['required']
        );

        $error = Validator::make($request->all(), $rules);

        //Return error if exists
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        //creating new member
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


    /** Return data to edit member modal  */
    public function edit($id)
    {
        if(request() -> ajax()){
            $data = Members::find($id);

            return response()->json(['result' => $data]);
        }
    }

    /** Update a Member */
    public function update(Request $request, $id)
    {
        //Validation Rules
        $rules = array(
            'name' => ['required', 'string', 'max:64'],
            'nsu_id'=> ['required', 'integer'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'phone_num' => ['required', 'string', 'max:15'],
            'position' => ['required', 'string', 'max:30'],
            'join_date' => ['required']
        );

        $error = Validator::make($request->all(), $rules);

        //Return error if exists
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

   /** Delete a Member */
    public function destroy($id)
    {
        $member = Members::find($id);
        $member->delete();
    }
}
