<?php

Route::get('/', 'RepositoryController@index');
Route::get('/repository', 'RepositoryController@all');
Route::get('/repository/{name}/data', 'RepositoryController@data');
Route::get('/repository/{name}', 'RepositoryController@show');
