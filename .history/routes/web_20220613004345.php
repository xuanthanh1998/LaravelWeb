<?php

use Illuminate\Support\Facades\Route;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Auth;

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
    return view('welcome');
});




Route::group(['prefix'=>'admin'],function(){
    Route::group(['prefix'=>'theloai'],function(){
        Route::get('danhsach/{id}', [App\Http\Controllers\TheLoaiController::class, 'getDanhSach']);
        Route::get('sua/{id}',[App\Http\Controllers\TheLoaiController::class, 'getSua']);
        Route::post('sua/{id}',[App\Http\Controllers\TheLoaiController::class, 'postSua']);

        Route::get('them',[App\Http\Controllers\TheLoaiController::class, 'getThem'])->middleware('auth');
        Route::post('them',[App\Http\Controllers\TheLoaiController::class, 'postThem']);

        Route::get('xoa/{id}',[App\Http\Controllers\TheLoaiController::class, 'getXoa']);
    });

    Route::group(['prefix'=>'loaitin'],function(){
        
       
        Route::get('danhsach', [App\Http\Controllers\LoaiTinController::class, 'getDanhSach'])->middleware('auth');

        Route::get('sua/{id}',[App\Http\Controllers\LoaiTinController::class, 'getSua']);
        Route::post('sua/{id}',[App\Http\Controllers\LoaiTinController::class, 'postSua']);

        Route::get('them',[App\Http\Controllers\LoaiTinController::class, 'getThem']);
        Route::post('them',[App\Http\Controllers\LoaiTinController::class, 'postThem']);

        Route::get('xoa/{id}',[App\Http\Controllers\LoaiTinController::class, 'getXoa']);
    });

    Route::group(['prefix'=>'tintuc'],function(){
       
        Route::get('danhsach', [App\Http\Controllers\TinTucController::class, 'getDanhSach'])->middleware('cacheResponse:600');
        
        Route::get('sua/{id}',[App\Http\Controllers\TinTucController::class, 'getSua']);
        Route::post('sua/{id}',[App\Http\Controllers\TinTucController::class, 'postSua']);

        Route::get('them',[App\Http\Controllers\TinTucController::class, 'getThem'])->middleware('auth');
        Route::post('them',[App\Http\Controllers\TinTucController::class, 'postThem']);

        Route::get('xoa/{id}',[App\Http\Controllers\TinTucController::class, 'getXoa']);
    });

    Route::group(['prefix'=>'ajax'],function(){
        Route::get('loaitin/{idTheLoai}',[App\Http\Controllers\AjaxController::class, 'getLoaiTin']);
    });
});



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');



Route::get('email-test', function(){

    $details['email'] = ' phamxuanthanh9897@gmail.com';

    dispatch(new App\Jobs\SendEmailJob($details));
});



Route::get('admin/home', [App\Http\Controllers\HomeController::class, 'adminHome'])->name('admin.home')->middleware('is_admin');




Route::get('/login/google', [App\Http\Controllers\Auth\LoginController::class, 'redirectToGoogle'])->name('login.google');
Route::get('/google/callback', [App\Http\Controllers\Auth\LoginController::class, 'handleGoogleCallback']);

Route::get('/loginfacebook', [App\Http\Controllers\Auth\LoginController::class, 'redirectToFacebook'])->name('login.facebook');
Route::get('/ogin/facebook/callback', [App\Http\Controllers\Auth\LoginController::class, 'handleFacebookCallback']);


// Route::prefix('google')->name('google.')->group( function(){
//     Route::get('login', [App\Http\Controllers\GoogleController::class, 'loginWithGoogle'])->name('login');
//     Route::any('callback', [App\Http\Controllers\GoogleController::class, 'callbackFromGoogle'])->name('callback');


// });

