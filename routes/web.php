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
Route::get('dashboard',function(){
    return redirect()->route('dashboard');
 });
 //topic
 Route::get('/timkiem',['as'=>'searchall','uses'=>'App\Http\Controllers\PostController@searchall']);
 Route::get('/thaoluan',['as'=>'thaoluan','uses'=>'App\Http\Controllers\PostController@getThaoLuan']);
 Route::get('/chiase',['as'=>'chiase','uses'=>'App\Http\Controllers\PostController@getChiaSe']);
 Route::get('/hoidap',['as'=>'hoidap','uses'=>'App\Http\Controllers\PostController@getHoiDap']);
//dangbai
 Route::post('',['as'=>'insert','uses'=>'App\Http\Controllers\PostController@insertPost'])->middleware('role');
//bai dang
 Route::get('/baidang/{id}',['as' => 'viewPost','uses'=>'App\Http\Controllers\PostController@viewPost']);
 Route::delete('delete/{id}',['as' => 'delete','uses'=>'App\Http\Controllers\PostController@delete'])->middleware('auth');
 Route::get('likepost/{id}',['as'=>'likePost','uses'=>'App\Http\Controllers\PostController@increaseLike'])->middleware('auth');
 Route::get('dislikepost/{id}',['as'=>'dislikePost','uses'=>'App\Http\Controllers\PostController@recreaseLike'])->middleware('auth');

 //comment
 Route::post('comment/{id}',['as' => 'comment','uses'=> 'App\Http\Controllers\CommentController@createComment'])->middleware('auth');
 Route::post('subcomment/{id}',['as' => 'subcomment','uses'=> 'App\Http\Controllers\SubCommentController@createSubComment'])->middleware('auth');
 Route::get('delete/comment/{id}',['as'=>'deleteComment','uses'=>'App\Http\Controllers\CommentController@delete'])->middleware('auth');
 Route::get('delete/comment2/{id}',['as'=>'deleteComment2','uses'=>'App\Http\Controllers\CommentController@delete2'])->middleware('auth');
 Route::get('delete/subcomment/{id}',['as' =>'deleteSubComment','uses'=>'App\Http\Controllers\SubCommentController@deleteSubComment'])->middleware('auth');
 //tin tuc
 Route::get('newsdetail/{id}', ['as'=>'ndtintuc', 'uses'=>'App\Http\Controllers\NewsController@getNewsDetail']); 
 Route::get('/tintuc',['as'=>'tintuc','uses'=>'App\Http\Controllers\NewsController@index']);
 //tai khoan
 Route::get('accoutinfo/{id}',['as'=>'info', 'uses'=>'App\Http\Controllers\UserController@getinfo'])->middleware('auth');
 Route::post('updateAccount/{id}',['as'=>'updateUser','uses'=>'App\Http\Controllers\UserController@updateUser'])->middleware('auth');
 Route::post('update/Avatar/{id}',['as'=>'updateAvatar','uses'=>'App\Http\Controllers\UserController@updateAvatar'])->middleware('auth');
 //thong bao
 Route::get('seen/{id}/{userid}',['as'=>'seenNoti','uses'=>'App\Http\Controllers\NotificationController@seenNoti'])->middleware('auth');
 Route::get('/changeStatus/{id}',['as'=>'changeNoti','uses'=>'App\Http\Controllers\NotificationController@changeStatus']);
 Route::get('/thongbao/{id}',['as'=>'noti','uses'=>'App\Http\Controllers\NotificationController@viewNoti'])->middleware('auth');
 Route::get('/deletetb/{id}',['as'=>'deleteNoti','uses'=>'App\Http\Controllers\NotificationController@deleteNoti'])->middleware('auth');

//role user primary
 Route::get('/dangbai',['as'=>'dangbai','uses'=>'App\Http\Controllers\TopicController@addPost'])->middleware('role');
//role admin
 route::get('/quantri',['as'=>'viewQT','uses'=>'App\Http\Controllers\UserController@viewQT'])->middleware('roleAdmin');

 Route::get('kiembai',['as' => 'checkPost','uses' => 'App\Http\Controllers\PostController@checkPost'])->middleware('roleAdmin');
 Route::get('allow/post/{id}',['as' => 'allowP','uses'=>'App\Http\Controllers\PostController@allowPost'])->middleware('roleAdmin');
 Route::get('deleteforadmin/{id}',['as' => 'deletePAdmin','uses'=>'App\Http\Controllers\PostController@deleteforAdmin'])->middleware('roleAdmin');

 Route::post('save/role/{id}',['as' => 'saveRole','uses' => 'App\Http\Controllers\UserController@setRole'])->middleware('roleAdmin');
 Route::post('insertnews', ['as'=>'insertnew', 'uses'=>'App\Http\Controllers\NewsController@insertNews'])->middleware('roleAdmin');
 Route::get('/dangtin',['as'=>'dangtin','uses'=>'App\Http\Controllers\NewsController@addNews'])->middleware('roleAdmin');
 Route::get('newslist', ['as'=>'newslist', 'uses'=>'App\Http\Controllers\NewsController@listNews'])->middleware('roleAdmin');
 Route::get('newslist/{id}',['as'=>'xoatin','uses'=>'App\Http\Controllers\NewsController@delNews'])->middleware('roleAdmin');
//role super admin
 Route::get('delete/user/{id}',['as' => 'deleteUser','uses'=>'App\Http\Controllers\UserController@deleteUser'])->middleware('roleSuperAdmin');








