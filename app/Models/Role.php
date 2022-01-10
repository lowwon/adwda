<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;
    protected $table = "Role";
    public $timestamps = false;
    protected $fillable = ["id","RoleName"];
    public function User(){
    	return $this->belongsto(User::class);
    }
}
