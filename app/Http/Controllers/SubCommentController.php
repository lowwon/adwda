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
class SubCommentController extends Controller
{
    public function createSubComment(Request $request, $id){
        $str =  $request->input('request');
        $saa = SubComment::all();
        $e = 0;
        foreach($saa as $a){
            $e = $a->id;
        }
        $e = $e + 1;
        $date = new DateTime('now');
        if($str != "")
        {
            $subcomment = SubComment::create([
                'id' => $e,
                'comment_id'=> $id,
                'Date' => $date,
                'user_id' => Auth::user()->id,
                'Content' => $str,
            ]);
            $comment = Comment::where('id',$subcomment->comment_id)->first();
            if(Auth::user()->id == $comment->user_id)
                return back();
            else{
                $post = Post::where('id', $comment->post_id)->first();
                $name = Auth::user()->name;
                $user1 = User::where('id',$post->user_id)->first();
                $ctc = $name.' has reply your comment on '.$user1->name."'s post";
                $l = $comment->post_id;
                $notification = Notification::create([
                    'content' => $ctc,
                    'user_id' => $comment->user_id,
                    'link' => $l,
                    'date' => new DateTime('now'),
                ]);
            }
        }
        return back();
    }
    public function deleteSubComment($id){
        $subcomment = SubComment::where('id',$id)->first();
        if(Auth::user()->role_id<2){
            $this->authorize('delete',$subcomment);
        }
        else{
            $user = User::where('id',$subcomment->user_id)->first();
            if(Auth::user()->role_id < $user->role_id)
                return back()->withInput();
        }
        $subcomment = SubComment::where('id',$id)->delete();
        return back()->withInput();
    }
}
