<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Post;
use App\Models\Comment;
use DateTime;
use Auth;
class CommentController extends Controller
{
    public function createComment(Request $rq, $id){
        $saa = Comment::all();
        $e = 0;
        foreach($saa as $a){
            $e = $a->id;
        }
        $e = $e + 1;
        $date = new DateTime('now');
        if($rq->areapost != "")
        {
            $comment = Comment::create([
                'id' => $e,
                'Content' => $rq->areapost,
                'post_id'=> $id,
                'user_id' => Auth::user()->id,
                'date' => $date
            ]);
        }
        return back();
    }
    public function delete($id){
        $comment = Comment::where('id',$id)->first();
        if(Auth::user()->id < 2)
        {
            $this->authorize($comment,'delete');
        }
        else{
            $user = User::where('id',$comment->user_id)->first();
            if(Auth::user()->role_id < $user->role_id)
                return back();
        }
        $comment = Comment::where('id',$id)->delete();
        return back();
    }
}