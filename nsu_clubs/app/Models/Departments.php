<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departments extends Model
{
    use HasFactory;

    protected $primaryKey = 'dept_id';

    public function members(){
        return $this->hasMany(Members::class,'dept_id'); // one to many relationship
    }
}
