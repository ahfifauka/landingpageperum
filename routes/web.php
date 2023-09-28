<?php

use App\Http\Controllers\PropertyController;
use App\Http\Controllers\SitePlanController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VisitasiController;
use App\Models\Property;
use App\Models\SitePlan;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    $data = [
        "properties"    => Property::orderBy('tipe', 'ASC')->get(),
        "agents"        => User::where('role_id', 2)->orderBy('name', 'ASC')->limit(3)->get()
    ];
    return view('welcome', $data);
})->name('homepage');

Route::get('/about', function () {
    return view('about');
})->name('about');

Route::get('/siteplan/arumjaya', function () {
    return view('siteplan', [
        "siteplan"  => SitePlan::first()
    ]);
})->name('arumjayasiteplan');

Auth::routes();

Route::middleware(['auth'])->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::resource('user', UserController::class);
    Route::resource('property', PropertyController::class);
    Route::resource('visitasi', VisitasiController::class);
    Route::resource('siteplan', SitePlanController::class);
    Route::get('showall/property', [PropertyController::class, 'propertyAll'])->name('showall');
    Route::get('bookingvisitasi', [VisitasiController::class, 'createVisitasi'])->name('visitasicreate');
});
