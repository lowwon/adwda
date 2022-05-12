<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $table = "Post";
    public $timestamps = false;
    protected $fillable = ["id","user_id","Name","Content","Date","topic_id","status","number_like","number_dislike"];
    public function User(){
    	return $this->belongsto(User::class);
    }
    public function Topic(){
    	return $this->belongsto(Topic::class);
    }
    public function Comment(){
        return $this->hasMany(Comment::class);
    }
    public function Post_User(){
        return $this->hasMany(Post_User::class);
    }
    
}
