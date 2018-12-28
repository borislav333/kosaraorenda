<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/

//\Illuminate\Support\Facades\Route::get('/forus')->name('forus');

Route::apiResource('/events','EventsController')->except(['create']);
Route::apiResource('/advices','AdvicesController')->except(['create']);
Route::apiResource('/travels','TravelsController')->except(['create']);
Route::post('/advices/create','AdvicesController@store');
Route::post('/events/create','EventsController@store');
Route::post('/travels/create','TravelsController@store');
Route::get('/travelout','TravelsController@indexOut');
/*
Route::get('/travels/create','TravelsController@store');
Route::post('/events/post/{show}','EventsController@show');
Route::post('/advices/post/{show}','AdvicesController@show');*/
Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('signup','AuthController@signup');

});