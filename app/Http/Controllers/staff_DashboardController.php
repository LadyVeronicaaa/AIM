<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\CitizenModel;
use App\Models\BusinessModel;
use App\Models\TransactionModel;
use App\Models\FeeModel;
use App\Models\ComplaintModel;
use App\Models\WorkersModel;
use App\Models\FeeTypeModel;
use App\Models\Barangay_CaseModel;
use App\Models\NotesModel;
use App\Models\PurokModel;




use Illuminate\Support\Facades\Auth;
use Str;
use Hash;

class staff_DashboardController extends Controller
{
    public function staff_profile(Request $request)
    {

        $worker = Auth::user();


        $workerProfile = WorkersModel::find($worker->Worker_ID);


        return view('staff.profile', compact('workerProfile'));
    }

    public function staff_profile_post(Request $request)
    {
        if ($request->has('Worker_ID')) {

            $updateRecord = WorkersModel::find($request->Worker_ID);
        } else {

            $updateRecord = new WorkersModel;
        }


        $updateRecord->Worker_fname = trim($request->Worker_fname);
        $updateRecord->Worker_mname = trim($request->Worker_mname);
        $updateRecord->Worker_lname = trim($request->Worker_lname);
        $updateRecord->Username = trim($request->Username);


        if ($request->hasFile('Profile_pic')) {

            if (!empty($updateRecord->Profile_pic) && file_exists(public_path('citizen_img/' . $updateRecord->Profile_pic))) {
                unlink(public_path('citizen_img/' . $updateRecord->Profile_pic));
            }

            $randomStr = Str::random(30);
            $filename = $randomStr . '.' . $request->file('Profile_pic')->getClientOriginalExtension();
            $request->file('Profile_pic')->move(public_path('citizen_img/'), $filename);
            $updateRecord->Profile_pic = $filename;
        }

        if (!empty($request->new_password)) {
            $updateRecord->password = Hash::make($request->new_password);
        }

        $updateRecord->save();

        return redirect()->back()->with('success', "Profile Successfully Updated");
    }

    public function staff_home (Request $request){
        $worker = Auth::user();
        $workerProfile = WorkersModel::find($worker->Worker_ID);

        $citizen_record = CitizenModel::all();
        $business_record = BusinessModel::all();
        $data = [
            'citizen_record' => $citizen_record,
            'business_record' => $business_record,
        ];
        return view('staff.home', $data , compact('workerProfile'));
     }

     public function staff_add_business (Request $request){
        $worker = Auth::user();
        $workerProfile = WorkersModel::find($worker->Worker_ID);

        return view('staff.add.business', compact('workerProfile'));
     }

     public function staff_add_business_post (Request $request){

      $insertRecord = new BusinessModel;
      $insertRecord->Business_name = trim($request->Business_name);
      $insertRecord->Owner_name = trim($request->Owner_name);
      $insertRecord->Date_established = trim($request->Date_established);
      $insertRecord->Business_Status = trim($request->Business_Status);
      $insertRecord->Business_Address = trim($request->Business_Address);
      $insertRecord->Business_purok = trim($request->Business_purok);
      $insertRecord->Business_permit = trim($request->Business_permit);
      $insertRecord->Contact_NO = trim($request->Contact_NO);
      $insertRecord->BOF = trim($request->BOF);
      $insertRecord->Business_Type = trim($request->Business_Type);

      $insertRecord->save();

      return redirect()->back()->with('success', "Business Record Successfully Add");

    }

     // add_certif
     public function staff_add_certif (Request $request){
        $worker = Auth::user();
        $workerProfile = WorkersModel::find($worker->Worker_ID);

        return view('staff.add.certif', compact('workerProfile'));
     }

    // add_citizen
     public function staff_add_citizen (Request $request){
      $worker = Auth::user();
      $workerProfile = WorkersModel::find($worker->Worker_ID);

      return view('staff.add.citizen', compact('workerProfile'));
    }

    public function staff_add_citizen_post (Request $request){

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

    public function staff_add_feetype (Request $request){
      $worker = Auth::user();
      $workerProfile = WorkersModel::find($worker->Worker_ID);

        $fee_type = FeeTypeModel::all();
        $data = [
            'fee_type' => $fee_type,
        ];

      return view('staff.add.feetype', compact('workerProfile'));
    }

    public function staff_add_feetype_post (Request $request){

        $insertRecord = new FeeTypeModel;
        $insertRecord->Fee_Type = trim($request->Fee_Type);
        $insertRecord->Fee_Amount = trim($request->Fee_Amount);
        $insertRecord->Collection_type = trim($request->Collection_type);
        $insertRecord->Collection_period = trim($request->Collection_period);
        $insertRecord->Collection_start = trim($request->Collection_start);
        $insertRecord->save();
        return redirect()->back()->with('success', "Fee Type Record Successfully Add");
      }


//purok add
      public function staff_add_purok(Request $request) {
        $worker = Auth::user();
        $workerProfile = WorkersModel::find($worker->Worker_ID);
        return view('staff.add.purok', compact('workerProfile'));
    }
    public function staff_add_purok_post(Request $request) {
        $insertRecord = new PurokModel;
        $insertRecord->Purok_Name = trim($request->Purok_Name); // Ensure the request field name matches
        $insertRecord->save();

        return redirect()->back()->with('success', "Purok Record Successfully Added");
    }


    public function staff_report (Request $request){
      $worker = Auth::user();
      $workerProfile = WorkersModel::find($worker->Worker_ID);

      return view('staff.report', compact('workerProfile'));
    }
    // brgy_case
    public function staff_brgy_case (Request $request){
      $worker = Auth::user();
      $workerProfile = WorkersModel::find($worker->Worker_ID);

      return view('staff.brgy_case', compact('workerProfile'));
    }
    public function staff_brgy_case_post (Request $request){

    $insertRecord = new Barangay_CaseModel;
    $insertRecord->Case_No = trim($request->Case_No);
    $insertRecord->Complainant = trim($request->Complainant);
    $insertRecord->Complainee = trim($request->Complainee);
    $insertRecord->FeeType = trim($request->for); // Assuming 'for' maps to FeeType
    $insertRecord->Actions_taken = trim($request->Actions_taken);
    $insertRecord->save();

    return redirect()->back()->with('success');
      }

        // notes
         // Method to display the form
        public function staff_add_notes(Request $request) {
        $worker = Auth::user();
        $workerProfile = WorkersModel::find($worker->Worker_ID);
        return view('staff.add.notes', compact('workerProfile'));
        }
     public function staff_add_notes_post(Request $request) {

        $insertRecord = new NotesModel;
        $insertRecord->Note = trim($request->Note);
        // $insertRecord->Citizen_ID = trim($request->Citizen_ID);
        $insertRecord->Date = now()->format('Y-m-d'); // Assuming you want to save the current date
        $insertRecord->Time = now()->format('H:i:s'); // Assuming you want to save the current time
        $insertRecord->save();

    return redirect()->back()->with('success', "Notes Record Successfully Added");
}


    // citizen profile
    public function citizen($Citizen_ID, Request $request){
        $worker = Auth::user();
        $workerProfile = WorkersModel::find($worker->Worker_ID);
        $data['citizen_record'] = CitizenModel::find($Citizen_ID);
        $data['transaction'] = TransactionModel::where('Transaction_ID', $Citizen_ID)->get();
        $data['fee_type'] = FeeTypeModel::where('FeeType_ID', $Citizen_ID)->get(); // Get a single instance
        $data['fee'] = FeeModel::where('Fees_ID', $Citizen_ID)->get(); // Get a single instance
        $data['complaint'] = ComplaintModel::where('Case_No', $Citizen_ID)->get();
        $data['purok1'] = PurokModel::where('Purok_ID',$Citizen_ID)->get();
        return view('citizen.citizen', $data, compact('workerProfile'));
    }

    public function citizen_edit ($Citizen_ID, Request $request){
      $worker = Auth::user();
      $workerProfile = WorkersModel::find($worker->Worker_ID);

      $data['citizen_record']= CitizenModel::find($Citizen_ID);
      return view ('citizen.edit', $data, compact('workerProfile'));
    }

    public function citizen_post ($Citizen_ID, Request $request){
      $updateRecord =  CitizenModel::find($Citizen_ID);
      $updateRecord->Citizen_lname = trim($request->Citizen_lname);
      $updateRecord->Citizen_fname = trim($request->Citizen_fname);
      $updateRecord->Citizen_mname = trim($request->Citizen_mname);
      $updateRecord->Address = trim($request->Address);
      $updateRecord->Purok = trim($request->Purok);
      $updateRecord->Residence_Type = trim($request->Residence_Type);
      $updateRecord->Sex = trim($request->Sex);
      $updateRecord->BloodType = trim($request->BloodType);
      $updateRecord->Marital_status = trim($request->Marital_status);
      $updateRecord->Citizen_birthdate = trim($request->Citizen_birthdate);
      $updateRecord->Senior_member = trim($request->Senior_member);
      $updateRecord->Education = trim($request->Education);
      $updateRecord->Enrollment_status = trim($request->Enrollment_status);
      $updateRecord->Occupation = trim($request->Occupation);
      $updateRecord->Employment_status = trim($request->Employment_status);
      $updateRecord->Mobile_no = trim($request->Mobile_no);
      $updateRecord->Tel_no = trim($request->Tel_no);
      $updateRecord->Religion = trim($request->Religion);
      $updateRecord->Deceased = trim($request->Deceased);
      $updateRecord->Pwd = trim($request->Pwd);
      $updateRecord->Voter = trim($request->Voter);
      $updateRecord->Voter_id = trim($request->Voter_id);
      $updateRecord->Barangay_id = trim($request->Barangay_id);
      $updateRecord->PhilSys_Copy = trim($request->PhilSys_Copy);

      if (!empty($request->file('Citizen_profile'))) {
        // Check if there's an existing image and delete it
        if (!empty($updateRecord->Citizen_profile) && file_exists(public_path('citizen_img/' . $updateRecord->Citizen_profile))) {
            unlink(public_path('citizen_img/' . $updateRecord->Citizen_profile));
        }

        // Generate a unique filename
        $randomStr = Str::random(30);
        $filename = $randomStr . '.' . $request->file('Citizen_profile')->getClientOriginalExtension();

        // Move the uploaded image file to the portfolio directory
        $request->file('Citizen_profile')->move(public_path('citizen_img/'), $filename);

        // Update the record with the new image filename
        $updateRecord->Citizen_profile = $filename;
    }

    $updateRecord->save();

    return redirect('citizen/' . $Citizen_ID)->with('success', "Profile Successfully Updated");

    }

    public function citizen_delete($Citizen_ID) {
      $deleteRecord = CitizenModel::find($Citizen_ID);

      if (!empty($deleteRecord->Citizen_profile) && file_exists(public_path('citizen_img/' . $deleteRecord->Citizen_profile))) {
          unlink(public_path('citizen_img/' . $deleteRecord->Citizen_profile));
      }

      $deleteRecord->delete();

      return redirect('staff/home')->with('success', "Record Successfully Deleted");
  }



}
