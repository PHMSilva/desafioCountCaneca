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
$GLOBALS['resultado']=0;

Route::middleware('api')->get('/foo', function(Request $request) {
    return 'parabens';
});

Route::middleware('api')->get('/fot/{num}', function($num) {

    return $GLOBALS['resultado'] +$num;
});


Route::middleware('auth:api')->get('/user', function (Request $request) {
    
    return $request->user();
});
