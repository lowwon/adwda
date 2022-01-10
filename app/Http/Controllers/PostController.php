<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Topic;
use App\Models\User;
use App\Models\Comment;
use App\Models\comment_user;
use Illuminate\Support\Facades\DB;
use DateTime;
use Auth;
class PostController extends Controller
{
    public function index()
    {
        $post = Post::all();
        return view('trangchu', compact('post'));
    }
    public function getThaoLuan(){
        $post = Post::where('topic_id',1)->get();
        $topic = Topic::all();
        $user = DB::table('users')->get();
        return view('thaoluan', compact('post','topic','user'));
    }
    public function getChiaSe(){
        $post = Post::where('topic_id',3)->get();
        $topic = Topic::all();
        $user = DB::table('users')->get();
        return view('chiase', compact('post','topic','user'));
    }
    public function getHoiDap(){
        $post = Post::where('topic_id',2)->get();
        $topic = Topic::all();
        $user = DB::table('users')->get();
        return view('hoidap', compact('post','topic','user'));
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

        Validator::make($rq->all(),$controls,$messages)->validate();
        $post = Post::create([
            'id' => $e,
            'user_id' => $id,
            'Name' => $rq->titlepost,
            'Content' => $rq->areapost,
            'Date' => $date,
            'topic_id' => $rq->txttopic
        ]);
        return redirect()->route('dashboard');
    }
    public function viewPost($id){
        $post = Post::where('id',$id)->first();
        $user_post = User::where('id',$post->user_id)->first();
        $user = User::all();
        $allpost = Post::where('topic_id',$post->topic_id)->get();
        $comment = Comment::where('post_id',$id)->get();
        return view('baidang',compact('post','allpost','comment','user_post','user'));
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
}

