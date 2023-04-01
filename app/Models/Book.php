<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    //protected $table='book';
    protected $guarded=['id'];
    //public  $timestamps=false;

    use HasFactory;
}
