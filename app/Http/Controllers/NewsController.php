<?php

namespace App\Http\Controllers;
use App\Models\Notification;
use Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\News;
use Illuminate\Support\Facades\DB;
class NewsController extends Controller
{
    
    public function index()
    {
        $news = News::orderBy('id','DESC')->Paginate(4);
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('news', compact('news','noti'));
    }
    public function addNews()
    {
        $news = News::all();
        return view('addnews', compact('news'));
    }
    public function insertNews(Request $request)
    {
        $id = Auth::user()->id;
        $messages=[
            'tieude.required'=>'Bạn phải nhập tiêu đề!',
            'hinh.required'=>'Bạn phải nhập hình tin tức!',
            'tomtat.required'=>'Bạn phải nhập bản tóm tắt của tin tức!',
            'noidung.required'=>'Bạn phải nhập nội dung của tin tức!',
        ];
        $controls = [
            'tieude'=>'required',
            'tomtat'=>'required',
            'hinh'=>'required',
            'noidung'=>'required',
        ];
        Validator::make($request->all(),$controls, $messages)->validate();
        $filename = "";
        if($request->file('fileUpLoad')->isValid())
        {
            $filename = $request->fileUpLoad->getClientOriginalName();
            $request->fileUpLoad->move('images/', $filename);
        }
        $news = News::create([
            'title'=>$request->tieude,
            'content'=>$request->tomtat,
            'img'=>$filename,
            'para'=>$request->noidung,
            'user_id' => $id,
        ]);
        $news = News::Paginate(4);
        return  redirect()->route('tintuc');
    }
    public function getNewsDetail($id){
        $news = News::where('id', $id)->first();
        $other = News::where('id', '<>', $news->id)->orderBy('id','desc')->take(4)->get();
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('newsdetail', compact('news','noti','other'));
    }
    public function listNews()
    {
        $news = News::paginate(5);
        return view('newslist', compact('news'));
    }
    public function delNews($id)
    {
        $record = News::where('id',$id)->first();
        if(file_exists(public_path('images/'.$record->img)))
        {
            unlink(public_path('images/'.$record->img));
        }
        News::where('id',$id)->delete();
        return redirect()->route('newslist');
    }
}
