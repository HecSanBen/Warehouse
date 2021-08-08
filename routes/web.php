<?php
/*
|--------------------------------------------------------------------------
| WEB ROUTES
|--------------------------------------------------------------------------
*/

// Home Page
Route::get('/', function () {
    return view('home');
});


/*
|--------------------------------------------------------------------------
| SHOW ROUTES
|--------------------------------------------------------------------------
*/

// Show All Products
Route::get('/products', 'ProductController@showProducts');

// Show One Product
Route::get('/products/view/{id}', 'ProductController@viewProduct')->name('viewproduct');


/*
|--------------------------------------------------------------------------
| CREATE ROUTES
|--------------------------------------------------------------------------
*/

// Create Product
Route::get('/products/create', 'ProductController@createProduct');
Route::post('/products/create', 'ProductController@saveProduct')->name('saveproduct');

// Edit Product
Route::post('/products/update/{id}', 'ProductController@updateProduct')->name('updateproduct');

// Delete Product
Route::post('/products/delete/{id}', 'ProductController@deleteProduct')->name('deleteproduct');

