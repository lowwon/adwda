<?php

namespace App\Http\Controllers;
use Auth;
use App\Models\Post;
use App\Models\Topic;
use App\Models\User;
use App\Models\Comment;
use App\Models\SubComment;
use Illuminate\Http\Request;
use App\Models\Notification;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
    public function setRole(Request $rq, $id){
        if($rq->radios > Auth::user()->role_id)
            return redirect()->route('viewQT');
        DB::table('users')->where('id',$id)->update(['role_id'=>$rq->radios]);
        return redirect()->route('viewQT');
    }
    public function deleteUser($id){
        if(Auth::user()->id == $id)
            return redirect()->route('viewQT');
        DB::table('users')->where('id',$id)->delete();
        return redirect()->route('viewQT');
    }
    public function getinfo($id){
        $user = User::where('id',$id)->first();
        $post = Post::where('user_id',$id)->where('status',1)->simplePaginate(8);
        if(Auth::check())
            $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
        else
            $noti = null;
        return view('accountinfo',compact('user','post','noti'));
    }
    public function updateUser(Request $rq, $id){
        $messages = [
            "name.required" => "Bạn phải nhập tên",
            "email.required" => "Bạn phải nhập Email",
            "sex.required" => "Bạn phải chọn giới tính",
            "phone.required" => "Bạn phải nhập số điện thoại",
            "ct.required" => "Bạn phải chọn quốc gia",
        ];
        $controls =[
            'name' => 'required',
            'email' => 'required',
            'sex' =>'required',
            'phone' => 'required',
            'ct' => 'required',
        ];
        Validator::make($rq->all(),$controls,$messages)->validate();
        DB::table('users')->where('id',$id)->update(['name'=>$rq->name,'email'=>$rq->email,'sex'=>$rq->sex,'phone'=>$rq->phone,'country'=>$rq->ct,'birthday'=>$rq->birthday]);
        $user = User::where('id',$id)->first();
        if($user->id < 2){
            DB::table('users')->where('id',$id)->update(['role_id'=>2]);
        }
        return back();
    }
}
