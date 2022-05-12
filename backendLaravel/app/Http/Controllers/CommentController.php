<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Auth;
use Datetime;
use App\Models\User;
use App\Models\Post;
use App\Models\Comment;
use App\Models\SubComment;
use App\Models\Notification;

class CommentController extends Controller
{
    public function createComment(Request $request, $id){
        $str =  $request->input('request');
        $saa = Comment::all();
        $e = 0;
        foreach($saa as $a){
            $e = $a->id;
        }
        $e = $e + 1;
        $date = new DateTime('now');
        if($str  != "")
        {
            $comment = Comment::create([
                'id' => $e,
                'Content' => $str,
                'post_id'=> $id,
                'user_id' => Auth::user()->id,
                'date' => $date
            ]);
            $post = Post::where('id', $comment->post_id)->first();
            if(Auth::user()->id == $post->user_id)
                return back();
            else{
                $user = User::where('id',$comment->user_id)->first();
                $var = substr($post->Name,0,15);
                $ct = $user->name.' has comment on your post | '.$var."...";
                $ct = substr($ct,0,70);
                $l = $comment->post_id;
                $notification = Notification::create([
                    'content' => $ct,
                    'user_id' => $post->user_id,
                    'link' => $l,
                    'date' => new DateTime('now'),
                ]);
            }
        }
        return back();
    }
    public function delete($id){
        $comment = Comment::where('id',$id)->first();
        $user = User::where('id',$comment->user_id)->first();
        if(Auth::user()->role_id < $user->role_id)
            return back();
        SubComment::where('comment_id',$id)->delete();
        Comment::where('id',$id)->delete();
        return back();
    }
    public function delete2($id){
        $comment = Comment::where('user_id',$id)->orderBy('date','desc')->fSirst();
        $user = User::where('id',$comment->user_id)->first();
        if(Auth::user()->id != $user->id)
            return back();
        SubComment::where('comment_id',$comment->id)->delete();
        Comment::where('user_id',$id)->orderBy('date','desc')->first()->delete();
        return back();
    }
}
