<?php

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

Route::get('/', 'adminController@index');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::group(['middleware'=>'UserAuth'], function(){
    
    Route::get('/add-category', 'CategoryController@addCategory');
    
    Route::post('/save-category', 'CategoryController@saveCategory');

    Route::get('/manage-category','CategoryController@manageCategory');

    Route::get('/edit-category/{edit_id}', 'CategoryController@editCategory');

    Route::post('/update-category','CategoryController@updateCategory');

    Route::get('/delete-category/{id}', 'CategoryController@deleteCategory');
    
    
    
    Route::get('/add-product','ProductController@addProduct');
    
    Route::post('/save-product','ProductController@saveProduct');

    Route::get('/manage-product','ProductController@manageProduct');

    Route::get('/view-product/{id}','ProductController@viewProduct');

    Route::get('/edit-product/{id}','ProductController@editProduct');

    Route::post('/update-product','productController@updateProduct');

    Route::get('/delete-product/{id}','ProductController@deleteProduct');

});





