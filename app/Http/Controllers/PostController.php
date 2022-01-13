<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Topic;
use App\Models\User;
use App\Models\Comment;
use App\Models\SubComment;
use Illuminate\Support\Facades\DB;
use DateTime;
use Auth;
class PostController extends Controller
{
    public function index()
    {
        $post = Post::all()->sortByDesc('Date');
        return view('trangchu', compact('post'));
    }
    public function getThaoLuan(){
        $post = Post::where('topic_id',1)->where('status',1)->orderBy('Date','desc')->Paginate(10);
        $topic = Topic::all();
        $user = DB::table('users')->get();
        $comment = Comment::all();
        return view('thaoluan', compact('post','topic','user','comment'));
    }
    public function getChiaSe(){
        $post = Post::where('topic_id',3)->where('status',1)->orderBy('Date','desc')->Paginate(10);
        $topic = Topic::all();
        $user = DB::table('users')->get();
        $comment = Comment::all();
        return view('chiase', compact('post','topic','user','comment'));
    }
    public function getHoiDap(){
        $post = Post::where('topic_id',2)->where('status',1)->orderBy('Date','desc')->Paginate(10);
        $topic = Topic::all();
        $user = DB::table('users')->get();
        $comment = Comment::all();
        return view('hoidap', compact('post','topic','user','comment'));
    }
    public function insertPost(Request $rq)
    {
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
        $user = User::all();
        $allpost = Post::where('topic_id',$post->topic_id)->where('status',1)->get();
        $comment = Comment::where('post_id',$id)->orderBy('date','desc')->simplePaginate(3);
        $subcomment = SubComment::all();
        return view('baidang',compact('post','allpost','comment','user_post','user','subcomment'));
    }
    public function delete($id){
        $post = Post::where('id',$id)->first();
        if(Auth::user()->role_id < 2)
            $this->authorize($post,'delete');
        else{
            $a = $post->user_id;
            $user = User::where('id',$a)->first();
            if(Auth::user()->role_id < $user->role_id)
            {
                return view('baidang',compact('post'));
            }
        }
        $post = Post::where('id',$id)->delete();
        return redirect()->route('dashboard');

    }
    public function deleteforAdmin($id){
        $post = Post::where('id',$id)->delete();
        return back();
    }
    public function checkPost()
    {
        $post = Post::where('status',0)->Paginate(10);
        $topic = Topic::all();
        $user = User::all();
        return view('kiembai',compact('post','topic','user'));
    }
    public function allowPost($id){
        $post = DB::table('post')->where('id',$id)->update(['status'=>1]);
        return back();
    }
}

