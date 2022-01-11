<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubComment extends Model
{
    use HasFactory;
    protected $table = "subcomment";
    public $timestamps = false;
    protected $fillable = ["id","comment_id","Date","Content","user_id"];
    public function Comment()
    {
        return $this->belongsTo(Comment::class);
    }
    public function User()
    {
        return $this->belongsTo(User::class);
    }
}
