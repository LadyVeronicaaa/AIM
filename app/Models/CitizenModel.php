<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CitizenModel extends Model
{
    use HasFactory;

    protected $table = 'citizen' ;
    protected $primaryKey = 'Citizen_ID';
    protected $fillable = [
        'Citizen_lname',
        'Citizen_fname',
        'Citizen_mname',
      
    ];

    public static function boot()
    {
        parent::boot();

        static::saving(function ($model) {
            $model->Citizen_lname = trim($model->Citizen_lname);
            $model->Citizen_fname = trim($model->Citizen_fname);
            $model->Citizen_mname = trim($model->Citizen_mname);
            // Add other fields as needed
        });
    }
}

