<?php
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Topic;
use App\Models\User;
use App\Models\Role;

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
    $post = Post::all();
    $topic = Topic::all();
    $user = User::all();
    return view('trangchu', compact('post','topic','user'));
})->name('dashboard');
Route::get('/403', function () {
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
 route::get('quantri',function(){
     $user = User::all();
     $role = Role::all();
     return view('quantri',compact('user','role'));
 })->name('viewQT')->middleware('roleAdmin');
 Route::post('{id}',['as' => 'saveRole','uses' => 'App\Http\Controllers\UserController@setRole'])->middleware('roleAdmin');
 Route::get('delete/user/{id}',['as' => 'deleteUser','uses'=>'App\Http\Controllers\UserController@deleteUser'])->middleware('roleSuperAdmin');