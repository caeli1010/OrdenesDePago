<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Alumno;
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

Route::get('/alumn', [Alumno::class, 'index']);

// Route::get('/alum/{legajo}', 'Alumno@show')->name('Alumno.show');
//Route::get('/alum/{legajo}',[Alumno::class, 'show'],['legajo'=>$legajo])