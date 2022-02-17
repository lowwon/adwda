<?php

namespace App\Http\Controllers;
use Auth;
use App\Models\Notification;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    public function changeStatus($id){
        $noti = Notification::where('id',$id)->update(['status'=>1]);
        $n = Notification::where('id',$id)->first();
        return redirect()->route('viewPost',['id'=>$n->link]);
     }
     public function viewNoti($id){
        if(Auth::user()->id != $id)
            return redirect()->route('dashboard');
        $noti = Notification::where('user_id',$id)->where('status',0)->get();
        $notiall = Notification::where('user_id',$id)->get();
        return view('thongbao',compact('noti','notiall'));
     }
     public function deleteNoti($id){
        if(Auth::user()->id != $id)
            return redirect()->route('dashboard');
        Notification::where('user_id',$id)->delete();
        $noti = Notification::where('user_id',$id)->where('status',0)->get();
        $notiall = Notification::where('user_id',$id)->get();
        return view('thongbao',compact('noti','notiall'));
     }
    public function seenNoti($id,$userid){
        Notification::where('id',$id)->update(['status'=>1]);
        $noti = Notification::where('user_id',$userid)->where('status',0)->get();
        $notiall = Notification::where('user_id',$userid)->get();
        return view('thongbao',compact('noti','notiall'));
    }
// name('noti')->middleware('auth');
// name('deleteNoti')->middleware('auth');
}
