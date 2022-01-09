<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $table = "Post";
    public $timestamps = false;
    protected $fillable = ["PostId","UserID","Name","Content","Date","TopicId"];
    public function User(){
    	return $this->beLongsto(User::class,"UserID","id");
    }
    public function Topic(){
    	return $this->beLongsto(Topic::class,"TopicId","TopicId");
    }
}
