<?php
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Topic;
use App\Models\User;
use App\Models\Role;
use App\Models\Comment;
use App\Models\Notification;
use App\Http\Kernel;

use Illuminate\Support\Facades\DB;
use Illuminate\Auth\Middleware\Authorize;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $post = Post::where('status',1)->orderBy('Date','desc')->Paginate(15);
    $topic = Topic::all();
    $user = User::all();
    $comment = Comment::all();
    if(Auth::check())
        $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
    else
        $noti = null;
    return view('trangchu', compact('post','topic','user','comment','noti'));
})->name('dashboard');
Route::get('/403', function () 
{
    return view('403');
})->name('error');
//Route::middleware(['auth:sanctum', 'verified'])->get('/trangchu', function () {
//    return view('welcome');
//})->name('dashboard');
Route::get('dashboard',function(){
    return redirect()->route('dashboard');
 });
 Route::get('/thaoluan',['as'=>'thaoluan','uses'=>'App\Http\Controllers\PostController@getThaoLuan']);
 Route::get('/chiase',['as'=>'chiase','uses'=>'App\Http\Controllers\PostController@getChiaSe']);
 Route::get('/hoidap',['as'=>'hoidap','uses'=>'App\Http\Controllers\PostController@getHoiDap']);
 Route::get('/dangbai',['as'=>'dangbai','uses'=>'App\Http\Controllers\TopicController@addPost'])->middleware('role');
 Route::post('',['as'=>'insert','uses'=>'App\Http\Controllers\PostController@insertPost']);
 Route::get('/baidang/{id}',['as' => 'viewPost','uses'=>'App\Http\Controllers\PostController@viewPost']);
 Route::delete('delete/{id}',['as' => 'delete','uses'=>'App\Http\Controllers\PostController@delete']);
 Route::get('delete/comment/{id}',['as'=>'deleteComment','uses'=>'App\Http\Controllers\CommentController@delete']);
 Route::get('delete/subcomment/{id}',['as' =>'deleteSubComment','uses'=>'App\Http\Controllers\SubCommentController@deleteSubComment']);
 route::get('quantri',function(){
     $user = User::all();
     $role = Role::all();
     if(Auth::check())
        $noti = Notification::where('user_id',Auth::user()->id)->where('status',0)->orderBy('date','desc')->Paginate(5);
    else
        $noti = null;
     return view('quantri',compact('user','role','noti'));
 })->name('viewQT')->middleware('roleAdmin');
 Route::get('kiembai',['as' => 'checkPost','uses' => 'App\Http\Controllers\PostController@checkPost'])->middleware('roleAdmin');
 Route::post('save/role/{id}',['as' => 'saveRole','uses' => 'App\Http\Controllers\UserController@setRole'])->middleware('roleAdmin');
 Route::get('delete/user/{id}',['as' => 'deleteUser','uses'=>'App\Http\Controllers\UserController@deleteUser'])->middleware('roleSuperAdmin');
 Route::post('comment/{id}',['as' => 'comment','uses'=> 'App\Http\Controllers\CommentController@createComment'])->middleware('auth');
 Route::post('subcomment/{id}',['as' => 'subcomment','uses'=> 'App\Http\Controllers\SubCommentController@createSubComment'])->middleware('auth');
 Route::get('allow/post/{id}',['as' => 'allowP','uses'=>'App\Http\Controllers\PostController@allowPost'])->middleware('roleAdmin');
 Route::get('deleteforadmin/{id}',['as' => 'deletePAdmin','uses'=>'App\Http\Controllers\PostController@deleteforAdmin'])->middleware('roleAdmin');
 Route::get('/tintuc',['as'=>'tintuc','uses'=>'App\Http\Controllers\NewsController@index']);
 Route::get('/dangtin',['as'=>'dangtin','uses'=>'App\Http\Controllers\NewsController@addNews'])->middleware('roleAdmin');
 Route::post('insertnews', ['as'=>'insertnew', 'uses'=>'App\Http\Controllers\NewsController@insertNews'])->middleware('roleAdmin');
 Route::get('newsdetail/{id}', ['as'=>'ndtintuc', 'uses'=>'App\Http\Controllers\NewsController@getNewsDetail']); 
 Route::get('accoutinfo/{id}',['as'=>'info', 'uses'=>'App\Http\Controllers\UserController@getinfo']);
 Route::post('updateAccount/{id}',['as'=>'updateUser','uses'=>'App\Http\Controllers\UserController@updateUser']);
 Route::post('update/Avatar/{id}',['as'=>'updateAvatar','uses'=>'App\Http\Controllers\UserController@updateAvatar']);
 Route::get('/changeStatus/{id}',function($id){
    $noti = Notification::where('id',$id)->update(['status'=>1]);
    $n = Notification::where('id',$id)->first();
    return redirect()->route('viewPost',['id'=>$n->link]);
 })->name('changeNoti');

