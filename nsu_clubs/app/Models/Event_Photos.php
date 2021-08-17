<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event_Photos extends Model
{
    use HasFactory;

    protected $table = 'event_photos';
    protected $primaryKey = 'p_id';

    protected $fillable = [
        'event_id',
        'path',  
    ];

    public function events(){
        return $this->belongsTo(Events::class,'event_id');
    }

}
