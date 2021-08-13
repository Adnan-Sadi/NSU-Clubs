<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Club_Managers extends Model
{
    use HasFactory;

    protected $table = 'club_managers';

    protected $primaryKey = 'man_id';
    
    public $timestamps = false;
}
