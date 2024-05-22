<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginMiddleware
{
    public function handle(Request $request, Closure $next, $Accesslvl = null)
    {
        if (Auth::check()) {
            if (Auth::user()->Accesslvl == $Accesslvl) {
                return $next($request);
            } else {
                Auth::logout();
                return redirect()->route('login')->with('error', 'Access Denied!');
            }
        } else {
            return redirect()->route('login')->with('error', 'Please login first!');
        }
    }
}


