<?php

use Illuminate\Support\Facades\Route;

/*
| Web Routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix' => 'category', 'middleware' => 'auth'], function () {
    // простыня
    Route::get('/', 'CategoryController@index')->name('categories');
    // по клику на "Добавить", вызывает форму
    Route::get('create', 'CategoryController@create')->name('category.create');
    // из  формы "Добавить", записывает в БД
    Route::post('add', 'CategoryController@add')->name('category.add');
    // по клику на "Edit", вызывает форму
    Route::get('edit/{category}', 'CategoryController@edit')->name('category.edit');
    // из  формы " Edit", записывает в БД
    Route::post('save/{id}', 'CategoryController@save')->name('category.save');
    // по клику на "Delete"
    Route::get('delete/{category}', 'CategoryController@delete')->name('category.delete');
});

Route::group(['prefix' => 'product', 'middleware' => 'auth'], function () {
    // простыня
    Route::get('/', 'ProductController@index')->name('products');
    // по клику на "Добавить", вызывает форму
    Route::get('create', 'ProductController@create')->name('product.create');
    // из  формы "Добавить", записывает в БД
    Route::post('add', 'ProductController@add')->name('product.add');
    // по клику на "Edit", вызывает форму
    Route::get('edit/{product}', 'ProductController@edit')->name('product.edit');
    // из  формы " Edit", записывает в БД
    Route::post('save/{id}', 'ProductController@save')->name('product.save');
    // по клику на "Delete"
    Route::get('delete/{product}', 'ProductController@delete')->name('product.delete');

    Route::get('search', 'ProductController@search')->name('product.search');
});
