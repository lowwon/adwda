<?php
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Topic;
use Illuminate\Support\Facades\DB;
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
    $post = Post::all();
    $topic = Topic::all();
    $user = DB::table('users')->get();
    return view('trangchu', compact('post','topic','user'));
})->name('dashboard');

//Route::middleware(['auth:sanctum', 'verified'])->get('/trangchu', function () {
//    return view('welcome');
//})->name('dashboard');
Route::get('dashboard',function(){
    return redirect()->route('dashboard');
 });
 Route::get('/thaoluan',['as'=>'thaoluan','uses'=>'App\Http\Controllers\PostController@getThaoLuan']);
 Route::get('/chiase',['as'=>'chiase','uses'=>'App\Http\Controllers\PostController@getChiaSe']);
 Route::get('/hoidap',['as'=>'hoidap','uses'=>'App\Http\Controllers\PostController@getHoiDap']);
 Route::get('/dangbai',['as'=>'dangbai','uses'=>'App\Http\Controllers\TopicController@addPost']);
 Route::post('',['as'=>'insert','uses'=>'App\Http\Controllers\PostController@insertPost']);