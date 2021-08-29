<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Collection;
use App\Models\Members;
use App\Models\Executive_Members;
use File;

class ExecutiveMembersController extends Controller
{

    /** Store an Executive Member */
    public function store(Request $request)
    {   
        //Validation Rules
        $rules = array(
            'ex_name' => ['required', 'string', 'max:64'],
            'ex_nsu_id'=> ['required', 'integer'],
            'ex_email' => ['required', 'string', 'email', 'max:255'],
            'ex_phone_num' => ['required', 'string', 'max:15'],
            'ex_position' => ['required', 'string', 'max:30'],
            'ex_join_date' => ['required'],
            'ex_photo' => ['required','mimes:png,jpg,jpeg','max:5048']
        );

        $error = Validator::make($request->all(), $rules);

        //return error if exists
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $newImageName = time(). '-'. $request->ex_name .'.'. $request->ex_photo->extension();
        $request->ex_photo->move(public_path('images/Executive Members'),$newImageName);//store image in storage

        $member = Members::create([
         'club_id' => $request->input('ex_club_id'),
         'dept_id' => $request->input('ex_dept_id'),
         'name' => $request->input('ex_name'),
         'nsu_id' => $request->input('ex_nsu_id'),
         'email' => $request->input('ex_email'),
         'phone_num' => $request->input('ex_phone_num'),
         'position' => $request->input('ex_position'),
         'join_date' => $request->input('ex_join_date'),
        ]);
        
        
        $club_id = $request->input('ex_club_id');
        $nsu_id = $request->input('ex_nsu_id');

        $member2 = DB::table('members')->select('m_id')->where('nsu_id','=',$nsu_id)
                                    ->where('club_id','=',$club_id)
                                    ->get(); //getting m_id

        $ex_member = Executive_Members::create([
        'm_id'  => $member2[0]->m_id,
        'photo' => $newImageName,
        ]);

        return response()->json(['success' => 'Data Added successfully.']);
    }


    /** Return data to edit executive member modal  */
    public function edit($id)
    {
        $temp = DB::table('members')
                ->join('executive__members', 'members.m_id', '=','executive__members.m_id')
                ->select('members.*','executive__members.photo')
                ->get();
        $data = $temp->where('m_id',$id)->values();
        
        return response()->json(['result' => $data]);
    }

    /** Update an Executive Member */
    public function update(Request $request, $id)
    {
        //Validation Rules
        $rules = array(
            'ex_name' => ['required', 'string', 'max:64'],
            'ex_nsu_id'=> ['required', 'integer'],
            'ex_email' => ['required', 'string', 'email', 'max:255'],
            'ex_phone_num' => ['required', 'string', 'max:15'],
            'ex_position' => ['required', 'string', 'max:30'],
            'ex_join_date' => ['required'],
            'ex_photo' => ['mimes:png,jpg,jpeg','max:5048']
        );

        $error = Validator::make($request->all(), $rules);

        //return error if exists
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $member = Members::where('m_id',$id)->update([
         'club_id' => $request->input('ex_club_id'),
         'dept_id' => $request->input('ex_dept_id'),
         'name' => $request->input('ex_name'),
         'nsu_id' => $request->input('ex_nsu_id'),
         'email' => $request->input('ex_email'),
         'phone_num' => $request->input('ex_phone_num'),
         'position' => $request->input('ex_position'),
         'join_date' => $request->input('ex_join_date'),
        ]);

        //Set new image name if user uploads a new image
        if($request->ex_photo != null){
         
            if(File::exists(public_path('images/Executive Members/'.$request->uploaded_image))){
            File::delete(public_path('images/Executive Members/'.$request->uploaded_image));
            }//Delete previous picture from storage

            $newImageName = time(). '-'. $request->ex_name .'.'. $request->ex_photo->extension();
            $request->ex_photo->move(public_path('images/Executive Members'),$newImageName);//store image in storage

        }
        else{
            $newImageName= $request->uploaded_image; //Set to old imagename if user doesn't upload a new image
        }

        $ex_member = Executive_Members::where('m_id',$id)->update([
        'photo' => $newImageName,
        ]);

        return response()->json(['success' => 'Data Added successfully.']);
    }

}
