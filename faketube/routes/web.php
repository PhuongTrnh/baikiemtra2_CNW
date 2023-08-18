<?php

use App\Http\Controllers\ChannelController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('master');
});

Route::resource('channels', ChannelController::class);