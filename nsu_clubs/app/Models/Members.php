<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Members extends Model
{
    use HasFactory;

    protected $primaryKey = 'm_id';

    protected $dates = ['join_date'];

    protected $fillable = [
        'club_id',
        'dept_id',
        'name',
        'nsu_id',
        'email',
        'phone_num',
        'position',
        'join_date',  
    ];

    public function clubs(){
        return $this->belongsTo(Clubs::class);
    }

    public function departments(){
        return $this->belongsTo(Departments::class);
    }
}