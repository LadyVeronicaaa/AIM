<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CitizenModel;
use App\Models\WorkersModel;
use Str;
use Hash;

class admin_DashboardController extends Controller
{
    public function admin_home (Request $request){
        
        return view('admin.home');
    }

    public function admin_manage (Request $request){
        
        return view('admin.admin_manage');
    }

    public function admin_add_admin (Request $request){
        
        return view('admin.add.admin');
    }


    public function admin_add_admin_post(Request $request)
    {
        
    
            $insertRecord = new WorkersModel();
            $insertRecord->Worker_fname = $request->Worker_fname;
            $insertRecord->Worker_mname = $request->Worker_mname;
            $insertRecord->Worker_lname = $request->Worker_lname;
            $insertRecord->status = $request->status;
            $insertRecord->Username = $request->Username;
            $insertRecord->Accesslvl = $request->Accesslvl;
            $insertRecord->password = Hash::make($request->password); 
    
            $insertRecord->save();
    
            return redirect()->back()->with('success', "Admin Record Successfully Add");
    }  

    public function searchCitizen(Request $request)
    {
        if ($request->ajax()) {
            $query = $request->get('query');
            $citizens = CitizenModel::where('Citizen_lname', 'LIKE', "%{$query}%")
                ->orWhere('Citizen_fname', 'LIKE', "%{$query}%")
                ->orWhere('Citizen_mname', 'LIKE', "%{$query}%")
                ->get(['Citizen_lname', 'Citizen_fname', 'Citizen_mname']);
            
            return response()->json($citizens);
        }
    }

    public function admin_add_citizen(Request $request)
    {
        return view('admin.add.citizen');
    }

    public function admin_add_citizen_post (Request $request){
     
        $insertRecord = new CitizenModel;
        $insertRecord->Citizen_lname = trim($request->Citizen_lname);
        $insertRecord->Citizen_fname = trim($request->Citizen_fname);
        $insertRecord->Citizen_mname = trim($request->Citizen_mname);
        $insertRecord->Address = trim($request->Address);
        $insertRecord->Purok = trim($request->Purok);
        $insertRecord->Residence_Type = trim($request->Residence_Type);
        $insertRecord->Sex = trim($request->Sex);
        $insertRecord->BloodType = trim($request->BloodType);
        $insertRecord->Marital_status = trim($request->Marital_status);
        $insertRecord->Citizen_birthdate = trim($request->Citizen_birthdate);
        $insertRecord->Senior_member = trim($request->Senior_member);
        $insertRecord->Education = trim($request->Education);
        $insertRecord->Enrollment_status = trim($request->Enrollment_status);
        $insertRecord->Occupation = trim($request->Occupation);
        $insertRecord->Employment_status = trim($request->Employment_status);
        $insertRecord->Mobile_no = trim($request->Mobile_no);
        $insertRecord->Tel_no = trim($request->Tel_no);
        $insertRecord->Religion = trim($request->Religion);
        $insertRecord->Deceased = trim($request->Deceased);
        $insertRecord->Pwd = trim($request->Pwd);
        $insertRecord->Voter = trim($request->Voter);
        $insertRecord->Voter_id = trim($request->Voter_id);
        $insertRecord->Barangay_id = trim($request->Barangay_id);
        $insertRecord->PhilSys_Copy = trim($request->PhilSys_Copy);
  
        if(!empty($request->file('Citizen_profile'))){
  
          if(!empty($insertRecord->Citizen_profile) && file_exists('public/ citizen_img/'. $insertRecord->Citizen_profile))
          {
              unlink('public/citizen_img/'. $insertRecord->Citizen_profile);
          }
  
          $file = $request->file('Citizen_profile');
          $randomStr = Str::random(30);
          $filename =  $randomStr . '.' . $file-> getClientOriginalExtension();
          $file->move('public/citizen_img/',  $filename);
          $insertRecord->Citizen_profile =  $filename;
  
      }
  
        $insertRecord->save();
  
        return redirect()->back()->with('success', "Citizen Record Successfully Add");
    }

}
