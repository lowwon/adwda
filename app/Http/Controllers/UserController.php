<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
}
