<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Executive_Members extends Model
{
    use HasFactory;

    protected $fillable = [
        'm_id',
        'photo',  
    ];

    public $timestamps = false;

    public function clubs(){
        return $this->belongsTo(Members::class);
    }
}
