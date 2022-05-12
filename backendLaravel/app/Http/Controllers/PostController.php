<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Post_User;
use App\Models\Topic;
use App\Models\User;
use App\Models\Comment;
use App\Models\SubComment;
use App\Models\Notification;
use Illuminate\Support\Facades\DB;
use DateTime;
use Auth;
class PostController extends Controller
{
    public function searchall(Request $request){
        $post = Post::where('Name','like', "%$request->searchtext%")->orderBy('Date','desc')->Paginate(15);
        $topic = Topic::all();
        $user = DB::table('users')->get();
        $comment = Comment::all();
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('trangchu', compact('post','topic','user','comment','noti'));
    }
    public function index(){
        $post = Post::all()->sortByDesc('Date');
        return view('trangchu', compact('post'));
    }
    public function getThaoLuan(){
        $post = Post::where('topic_id',1)->where('status',1)->orderBy('Date','desc')->Paginate(15);
        $topic = Topic::all();
        $user = DB::table('users')->get();
        $comment = Comment::all();
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('thaoluan', compact('post','topic','user','comment','noti'));
    }
    public function getChiaSe(){
        $post = Post::where('topic_id',3)->where('status',1)->orderBy('Date','desc')->Paginate(15);
        $topic = Topic::all();
        $user = DB::table('users')->get();
        $comment = Comment::all();
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('chiase', compact('post','topic','user','comment','noti'));
    }
    public function getHoiDap(){
        $post = Post::where('topic_id',2)->where('status',1)->orderBy('Date','desc')->Paginate(15);
        $topic = Topic::all();
        $user = DB::table('users')->get();
        $comment = Comment::all();
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('hoidap', compact('post','topic','user','comment','noti'));
    }
    public function insertPost(Request $rq){
        $saa = Post::all();
        $e = 0;
        foreach($saa as $a){
            $e = $a->id;
        }
        $e = $e + 1;
        $id = Auth::user()->id;
        $date = new DateTime('now');
        $messages=[
            "titlepost.required" => "Bạn phải nhập tiêu đề cho bài viết",
            "areapost.required" => "Bạn phải nhập nội dung bài viết"
        ];
        $controls=[
            'titlepost'=> 'required',
            'areapost'=> 'required'
        ];
        $st = 1;
        Validator::make($rq->all(),$controls,$messages)->validate();
        if(Auth::user()->role_id > 2){
            $post = Post::create([
                'id' => $e,
                'user_id' => $id,
                'Name' => $rq->titlepost,
                'Content' => $rq->areapost,
                'Date' => $date,
                'topic_id' => $rq->txttopic,
                'status' => $st
            ]);
        }
        else{
            $post = Post::create([
                'id' => $e,
                'user_id' => $id,
                'Name' => $rq->titlepost,
                'Content' => $rq->areapost,
                'Date' => $date,
                'topic_id' => $rq->txttopic
            ]);
        }
        return redirect()->route('dashboard');
    }
    public function viewPost($id){
        $post = Post::where('id',$id)->first();
        if($post->status == 0)
        {
            if(Auth::user()->role_id < 3)
                return redirect()->route('dashboard'); 
        }
        $user_post = User::where('id',$post->user_id)->first();
        $post_user = Post_User::where('post_id',$id)->get();
        $check = 0;
        if(Auth::check()){
            if(Post_User::where('post_id',$id)->where('user_id',Auth::user()->id)->first() != null)
            $check = 1;
        }
        $ux = [];
        $c = Comment::where('post_id',$id)->orderBy('date','desc')->get();
        foreach($c as $com){
            $u = User::where('id',$com->user_id)->first();
            $ux[] = $u;
        }
        $user = array_unique($ux);
        $allpost = Post::where('topic_id',$post->topic_id)->where('status',1)->simplePaginate(10);
        $comment = Comment::where('post_id',$id)->orderBy('date','desc')->simplePaginate(3);
        $subcomment = [];
        foreach($c as $com){
            $sc = SubComment::where('comment_id',$com->id)->get();
            foreach($sc as $scc){
                $subcomment[] = $scc;
            }
        }
        $us = []; 
        foreach($subcomment as $scb){
            $u = User::where('id',$scb->user_id)->first();
            $us[] = $u;
        }
        $user_sc = array_unique($us);
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('baidang',compact('post','allpost','comment','user_post','user','user_sc','subcomment','noti','post_user','check'));
    }
    public function delete($id){
        $post = Post::where('id',$id)->first();
        if(Auth::user()->role_id < 2)       
            return redirect()->route('dashboard');
        else{
            $a = $post->user_id;
            $user = User::where('id',$a)->first();
            if(Auth::user()->role_id < $user->role_id)
            {
                return back();
            }
        }
        $comment = Comment::where('post_id',$id)->get();
        foreach($comment as $c){
            SubComment::where('comment_id',$c->id)->delete();
        }
        Comment::where('post_id',$id)->delete();
        Post::where('id',$id)->delete();
        return redirect()->route('dashboard');
    }
    public function deleteforAdmin($id){
        $post = Post::where('id',$id)->delete();
        return back();
    }
    public function checkPost(){
        $post = Post::where('status',0)->Paginate(15);
        $topic = Topic::all();
        $user = User::all();
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('kiembai',compact('post','topic','user','noti'));
    }
    public function allowPost($id){
        $post = DB::table('post')->where('id',$id)->update(['status'=>1]);   
        return back();
    }
    public function increaseLike($id){
        $post = Post::where('id',$id)->first();
        $i = (int)$post->number_like + 1;
        $j = (int)$post->number_dislike - 1;
        $check = Post_User::where('post_id',$id)->where('user_id',Auth::user()->id)->first();
        if($check == null){
            Post::where('id',$id)->update(['number_like'=>$i]);
            $post_user = Post_User::create([
                'post_id'=>$id,
                'user_id'=>Auth::user()->id,
                'checklike'=>1,
            ]);
        }
        else{
            if($check->checklike == 1){
                $i = $i-2;
                Post::where('id',$id)->update(['number_like'=>$i]);
                Post_User::where('post_id',$id)->where('user_id',Auth::user()->id)->delete();
            }
            else{
                Post::where('id',$id)->update(['number_like'=>$i,'number_dislike'=>$j]);
                Post_User::where('post_id',$id)->where('user_id',Auth::user()->id)->update(['checklike'=>1,'checkdislike'=>0]);
            }
        }
        return back();
    }
    public function recreaseLike($id){
        $post = Post::where('id',$id)->first();
        $i = (int)$post->number_dislike + 1;
        $j = (int)$post->number_like - 1;
        $check = Post_User::where('post_id',$id)->where('user_id',Auth::user()->id)->first();
        if($check == null){
            Post::where('id',$id)->update(['number_dislike'=>$i]);
            $post_user = Post_User::create([
                'post_id'=>$id,
                'user_id'=>Auth::user()->id,
                'checkdislike'=>1,
            ]);
        }
        else{
            if($check->checkdislike == 1)
            {
                $i = $i-2;
                Post::where('id',$id)->update(['number_dislike'=>$i]);
                Post_User::where('post_id',$id)->where('user_id',Auth::user()->id)->delete();
            }
            else{
                Post::where('id',$id)->update(['number_dislike'=>$i,'number_like'=>$j]);
                Post_User::where('post_id',$id)->where('user_id',Auth::user()->id)->update(['checklike'=>0,'checkdislike'=>1]);
            }
        }
        return back();
    }
}

