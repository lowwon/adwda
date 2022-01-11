<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $table = "Comment";
    public $timestamps = false;
    protected $fillable = ["id","Content","post_id","date","user_id"];
    public function User()
    {
        return $this->belongsTo(User::class);
    }
    public function Post(){
        return $this->belongsto(Post::class);
    }
    public function SubComment(){
        return $this->hasMany(SubComment::class);
    }
}
