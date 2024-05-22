<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\WorkersModel;
use Hash;



class AuthController extends Controller
{
    public function login(Request $request)
     {   
        // $password= "admin123"; //932848284  $2y$12$3YAii39zMHcMb18doFo8dObF.pqewNROGvjPyECvk7a8fc13plC2q/// $2y$12$vWDlmCV2Ia6O4FI3QBxbceui4ZLi8LBtcVDdpHFLhoaR7vCPNu.h.
        // $dd = Hash::make($password);
        // dd($dd);
        Auth::logout(); 
        return view('auth.login');
    }

    public function forgot(Request $request)
    {
        return view('auth.forgot');
    }

    public function login_check(Request $request)
    {
        $credentials = [
            'username' => $request->username,
            'password' => $request->password
        ];

        if (Auth::attempt($credentials, true)) {
            if (Auth::user()->status == '1') {
                if (Auth::user()->Accesslvl == '0') {
                    return redirect()->intended('staff/home');
                } elseif (Auth::user()->Accesslvl == '1') {
                    return redirect()->intended('admin/home');
                } else {
                    return redirect()->route('login')->with('error', 'Unknown Role');
                }
            } else {
                $worker_id = Auth::user()->Worker_ID;
                Auth::logout();
                $user = WorkersModel::find($worker_id);
                return redirect()->route('login')->with('error', 'This Email is Not Verified');
            }
        } else {
            return redirect()->back()->with('error', 'Please Enter the Correct Credentials!');
        }
    }

    
}
