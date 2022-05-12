<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    use HasFactory;
    protected $table = "Notification";
    public $timestamps = false;
    protected $fillable = ["id","content","user_id","link",'status','date'];
    public function User(){
    	return $this->belongsto(User::class);
    }
}