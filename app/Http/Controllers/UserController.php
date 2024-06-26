<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use Auth;
use Hash;

class UserController extends Controller
{
    public function MyAccount()
    {
       $data['getRecord'] = User::getSingle(Auth::user()->id);
       $data['header_title'] = "My Account";
       return view('teacher.my_account', $data); 
    }

    public function UpdateMyAccount(Request $request)
    { 
      $id = Auth::user()->id;
      request()->validate([
           
        'email'=>'required|email|unique:users,email,'.$id,
         
         'mobile_number' => 'max:15|min:8',
         'marital_status' => 'max:50',
         
    ]);
    $teacher = User::getSingle($id);
    $teacher->name = trim($request->name);
    $teacher->last_name = trim($request->last_name);
    $teacher->gender = trim($request->gender);

    if(!empty($request->date_of_birth))
    {
        $teacher->date_of_birth = trim($request->date_of_birth);
    }

    
    
     if(!empty($request->file('profile_pic')))
     {
        if(!empty($teacher->getProfile()))
        {
            unlink('upload/profile/'.$teacher->profile_pic);
        }

        $ext = $request->file('profile_pic')->getClientOriginalExtension();
        $file = $request->file('profile_pic');
        //$randomStr = Str::random(20);
        $randomStr = date('Ymdhis').Str::random(20);
        $filename = strtolower($randomStr).'.'.$ext;
        $file->move('upload/profile/', $filename); 
        $teacher->profile_pic = $filename;
     }
    $teacher->marital_status = trim($request->marital_status);
    $teacher->address = trim($request->address);
    $teacher->mobile_number = trim($request->mobile_number);
    $teacher->permanent_address = trim($request->permanent_address);
    $teacher->qualification = trim($request->qualification);
    $teacher->work_experience = trim($request->work_experience);
    $teacher->email = trim($request->email);
    $teacher->save();
    
    return redirect()->back()->with('success',"My Account data Successfully Updated");
    }
    public function change_password()
    {
       $data['header_title'] = "Change Password";
       return view('profile.change_password', $data); 
    }
    public function update_change_password(Request $request)
    {
        $user = User::getSingle(Auth::user()->id);
        if(Hash::check($request->old_password, $user->password))
        {
         $user->password = Hash::make($request->new_password);
         $user->save();
         return redirect()->back()->with('success',"Password is Successfully Changed");
        }
        else
        {
          return redirect()->back()->with('error',"Old Password is not Currect");
        }
    }
} 
