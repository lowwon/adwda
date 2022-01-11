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
    return view('trangchu', compact('post'));
})->name('dashboard');

//Route::middleware(['auth:sanctum', 'verified'])->get('/trangchu', function () {
//    return view('welcome');
//})->name('dashboard');
Route::get('dashboard',function(){
    return redirect()->route('dashboard');
 });
 Route::get('/dangbai',['as'=>'dangbai','uses'=>'App\Http\Controllers\TopicController@addPost']);
 Route::post('',['as'=>'insert','uses'=>'App\Http\Controllers\PostController@insertPost']);
 Route::get('/tintuc',['as'=>'tintuc','uses'=>'App\Http\Controllers\NewsController@index']);
 Route::get('/dangtin',['as'=>'dangtin','uses'=>'App\Http\Controllers\NewsController@addNews']);
 Route::post('', ['as'=>'insertnew', 'uses'=>'App\Http\Controllers\NewsController@insertNews']);
 Route::get('newsdetail/{id}', ['as'=>'ndtintuc', 'uses'=>'App\Http\Controllers\NewsController@getNewsDetail']); 