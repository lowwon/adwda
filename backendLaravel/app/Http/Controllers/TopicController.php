<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Notification;
use Auth;
use App\Models\Topic;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class TopicController extends Controller
{
    public function addPost()
    {
        $topic = Topic::all();
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
            return view('dangbai', compact('topic','noti'));
    }
}
