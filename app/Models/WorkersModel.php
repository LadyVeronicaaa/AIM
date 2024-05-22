<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class WorkersModel extends Authenticatable
{
    use HasFactory;

    protected $table = 'barangay_workers';
    protected $primaryKey = 'Worker_ID';
    protected $fillable = [
        'Worker_fname',
        'Worker_mname',
        'Worker_lname',
        'status',
        'role',
        'Username',
        'password',
    ];
}

?>

