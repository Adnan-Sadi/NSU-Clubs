<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Follow_Clubs extends Model
{
    use HasFactory;

    protected $table = 'follow_clubs';

    protected $primaryKey = 'follower_id';
    
    public $timestamps = false;

    protected $fillable = [
        'user_id',
        'club_id'
    ];
}
