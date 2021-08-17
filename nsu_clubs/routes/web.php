<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomePageController;
use App\Http\Controllers\ProfilePageController;
use App\Http\Controllers\ClubController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\MembersController;
use App\Http\Controllers\ExecutiveMembersController;

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

Route::resource('/', HomePageController::class);
Route::get('/home/{club}', [HomePageController::class, 'show'])->name('home.show');

Auth::routes();

Route::put('/profile/{profile}/update_image', [ProfilePageController::class, 'update_image'])->name('profile.update_image');
Route::resource('/profile', ProfilePageController::class);

Route::get('/home/{club}/events', [ClubController::class, 'show_events'])->name('club.show_events');
Route::get('/home/{club}/members', [ClubController::class, 'show_members'])->name('club.show_members');

Route::resource('/event', EventController::class);
Route::get('/event/{event}/follow', [EventController::class, 'follow'])->name('event.follow');
Route::get('/event/{event}/unfollow', [EventController::class, 'unfollow'])->name('event.unfollow');

Route::resource('/members', MembersController::class);
Route::post('/ex_members', [ExecutiveMembersController::class, 'store'])->name('ex_members.store');
Route::get('/ex_members/{ex_member}/edit', [ExecutiveMembersController::class, 'edit'])->name('ex_members.edit');
Route::post('/ex_members/{ex_member}', [ExecutiveMembersController::class, 'update'])->name('ex_members.update');



