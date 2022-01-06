<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Topic;
use Illuminate\Support\Facades\DB;


class TopicController extends Controller
{
    public function addPost()
    {
        $topic = Topic::all();

        return view('dangbai', compact('topic'));
    }
}
