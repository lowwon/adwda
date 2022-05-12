<?php

namespace App\Http\Controllers;
use Auth;
use App\Models\Post;
use App\Models\Topic;
use App\Models\User;
use App\Models\Role;
use App\Models\News;
use App\Models\Comment;
use App\Models\Post_User;
use App\Models\SubComment;
use Illuminate\Http\Request;
use App\Models\Notification;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
    public function setRole(Request $rq, $id){
        $user = User::where('id',$id)->first();
        if(Auth::user()->id != $user->id){
            if($rq->radios > Auth::user()->role_id || Auth::user()->role_id <= $user->role_id)
                return back();
        }
        else{
            if($rq->radios > Auth::user()->role_id)
                return back();
        }
        DB::table('users')->where('id',$id)->update(['role_id'=>$rq->radios]);
        return redirect()->route('viewQT');
    }
    public function deleteUser($id){
        $user = User::where('id',$id)->first();
        if(Auth::user()->id == $id || Auth::user()->role_id == $user->role_id)      
            return redirect()->route('viewQT');

        $post = Post::where('user_id',$id)->get();
        foreach($post as $p){
            $comment = Comment::where('post_id',$p->id)->get();
            foreach($comment as $c){
                SubComment::where('comment_id',$c->id)->delete();
            }
            Comment::where('post_id',$p->id)->delete();
        }
        $comment = Comment::where('user_id',$id)->get();
        foreach($comment as $c){
            SubComment::where('comment_id',$c->id)->delete();
        }
        Comment::where('user_id',$id)->delete();
        SubComment::where('user_id',$id)->delete();
        Post_User::where('user_id',$id)->delete();
        News::where('user_id',$id)->delete();
        Post::where('user_id',$id)->delete();
        User::where('id',$id)->delete();
        return redirect()->route('viewQT');
    }
    public function getinfo($id){
        $country = ['VietNam','Australia','Belgium','China','Lebanon','France','Germany','Japan','UK','USA'];
        $user = User::where('id',$id)->first();
        $post = Post::where('user_id',$id)->where('status',1)->simplePaginate(8);
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('accountinfo',compact('user','post','noti','country'));
    }
    public function updateUser(Request $rq, $id){
        DB::table('users')->where('id',$id)->update(['name'=>$rq->name,'email'=>$rq->email,'sex'=>$rq->sex,'phone'=>$rq->phone,'country'=>$rq->ct,'birthday'=>$rq->birthday]);
        $user = User::where('id',$id)->first();
        if($user->role_id < 2){
            DB::table('users')->where('id',$id)->update(['role_id'=>2]);
        }
        return back();
    }
    public function updateAvatar(Request $rq, $id){
        $messages=[
            'fileUpLoad.required'=>'Bạn phải chọn hình!',
        ];
        $controls = [
            'fileUpLoad'=>'required',
        ];
        Validator::make($rq->all(),$controls, $messages)->validate();
        $u = User::where('id',$id)->first();
        $filename = "logo.png";
        if($rq->file('fileUpLoad')->isValid())
        {
            if($u->avatar != 'logo.png'){
                if(file_exists(public_path('images/'.$u->avatar)))
                {
                    unlink(public_path('images/'.$u->avatar));
                }
            }
            $filename = $rq->fileUpLoad->getClientOriginalName();
            $rq->fileUpLoad->move('images/', $filename);
        }
        else{
            return back();
        }
        DB::table('users')->where('id',$id)->update(['avatar'=>$filename]);
        return back();
    }
    public function viewQT(){
        $user = User::orderBy('role_id','desc')->Paginate(10);
        $role = Role::all();
        if(Auth::check())
           $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
       else
           $noti = null;
        return view('quantri',compact('user','role','noti'));
    }
}
