<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post_User extends Model
{
    use HasFactory;
    use HasFactory;
    protected $table = "Post_user";
    public $timestamps = false;
    protected $fillable = ["post_id","user_id","checklike","checkdislike"];
    public function User(){
    	return $this->belongsto(User::class);
    }
    public function Post(){
    	return $this->belongsto(Post::class);
    }
}
