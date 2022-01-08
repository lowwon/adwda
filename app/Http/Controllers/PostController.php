<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Topic;
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
        $post = Post::where('TopicId',1)->get();
        $topic = Topic::all();
        $user = DB::table('users')->get();
        return view('thaoluan', compact('post','topic','user'));
    }
    public function getChiaSe(){
        $post = Post::where('TopicId',3)->get();
        $topic = Topic::all();
        $user = DB::table('users')->get();
        return view('thaoluan', compact('post','topic','user'));
    }
    public function getHoiDap(){
        $post = Post::where('TopicId',2)->get();
        $topic = Topic::all();
        $user = DB::table('users')->get();
        return view('thaoluan', compact('post','topic','user'));
    }
    public function insertPost(Request $rq)
    {
        $saa = Post::all();
        $e = 0;
        foreach($saa as $a){
            $e = $a->PostId;
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
            'PostId' => $e,
            'UserID' => $id,
            'Name' => $rq->titlepost,
            'Content' => $rq->areapost,
            'Date' => $date,
            'TopicId' => $rq->txttopic
        ]);
        return redirect()->route('dashboard');
    }
}

