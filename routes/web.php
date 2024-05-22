<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\staff_DashboardController;
use App\Http\Controllers\admin_DashboardController;
use App\Http\Controllers\AuthController;
use App\Http\Middleware\LoginMiddleware;
use App\Http\Middleware\AuthenticateMiddleware;


Route::get('/', [HomeController::class, 'index']);

Route::middleware(['auth', 'Accesslvl:0'])->group(function() {

    Route::get('staff/profile', [staff_DashboardController::class, 'staff_profile'])->middleware('auth')->name('staff_profile');
    Route::post('staff/profile/post', [staff_DashboardController::class, 'staff_profile_post'])->middleware('auth')->name('staff_profile_post');

    Route::get('staff/home', [staff_DashboardController::class, 'staff_home'])->middleware('auth')->name('staff_home');

    Route::get('staff/add/business', [staff_DashboardController::class, 'staff_add_business'])->middleware('auth')->name('staff_add_business');
    Route::post('staff/add/business/post', [staff_DashboardController::class, 'staff_add_business_post'])->middleware('auth')->name('staff_add_business_post');

    Route::get('staff/add/certif', [staff_DashboardController::class, 'staff_add_certif'])->middleware('auth')->name('staff_add_certif');

    Route::get('staff/add/citizen', [staff_DashboardController::class, 'staff_add_citizen'])->middleware('auth')->name('staff_add_citizen');

    Route::post('staff/add/citizen/post', [staff_DashboardController::class, 'staff_add_citizen_post'])->middleware('auth')->name('staff_add_citizen_post');

    Route::get('staff/add/feetype', [staff_DashboardController::class, 'staff_add_feetype'])->middleware('auth')->name('staff_add_feetype');

    Route::get('staff/add/purok', [staff_DashboardController::class, 'staff_add_purok'])->middleware('auth')->name('staff_add_purok');

    Route::get('staff/report', [staff_DashboardController::class, 'staff_report'])->middleware('auth')->name('staff_report');

    Route::get('staff/brgy_case', [staff_DashboardController::class, 'staff_brgy_case'])->middleware('auth')->name('staff_brgy_case');

    Route::get('citizen/{Citizen_ID}', [staff_DashboardController::class, 'citizen'])->middleware('auth')->name('citizen');

   

    Route::get('citizen/edit/{Citizen_ID}', [staff_DashboardController::class, 'citizen_edit'])->middleware('auth')->name('citizen_edit');
    Route::post('citzen/edit/{Citizen_ID}', [staff_DashboardController::class, 'citizen_post'])->middleware('auth')->name('citizen_post');
    Route::get('citzen/delete/{Citizen_ID}', [staff_DashboardController::class, 'citizen_delete'])->middleware('auth')->name('citizen_delete');

});

Route::middleware(['auth', 'Accesslvl:1'])->group(function() {

    Route::get('admin/home', [admin_DashboardController::class, 'admin_home'])->middleware('auth')->name('admin_home');
    Route::get('admin/manage', [admin_DashboardController::class, 'admin_manage'])->middleware('auth')->name('admin_manage');
    Route::get('admin/add/admin', [admin_DashboardController::class, 'admin_add_admin'])->middleware('auth')->name('admin_add_admin');
    Route::post('admin/add/admin/post', [admin_DashboardController::class, 'admin_add_admin_post'])->middleware('auth')->name('admin_add_admin_post');

    Route::get('admin/add/citizen', [admin_DashboardController::class, 'admin_add_citizen'])->middleware('auth')->name('admin_add_citizen');
    Route::post('admin/add/citizen/post', [admin_DashboardController::class, 'admin_add_citizen_post'])->middleware('auth')->name('admin_add_citizen_post');
    Route::get('/search-citizen', [admin_DashboardController::class, 'searchCitizen'])->name('searchCitizen');



});


Route::get('login', [AuthController::class, 'login'])->name('login');
Route::post('login_check', [AuthController::class, 'login_check'])->name('login_check');
Route::get('forgot', [AuthController::class, 'forgot'])->name('forgot');
Route::post('logout', [AuthController::class, 'logout'])->name('logout');
