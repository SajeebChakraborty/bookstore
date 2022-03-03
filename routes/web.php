<?php

use App\Http\Controllers\BookController;
use Illuminate\Support\Facades\Route;

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

//Route::resource('books', BookController::class);
Route::group(['prefix' => 'books', 'as'=>'books.'], function () {
    Route::get('/', [BookController::class, 'index'])->name('index');
    Route::get('/create', [BookController::class, 'create'])->name('create');
    Route::post('/', [BookController::class, 'store'])->name('store');
    Route::get('/{book}/show', [BookController::class, 'show'])->name('show');
    Route::get('/{book}/edit', [BookController::class, 'edit'])->name('edit');
    Route::put('/{book}', [BookController::class, 'update'])->name('update');
    Route::delete('/{book}', [BookController::class, 'destroy'])->name('destroy');
});
//Route::get('books/', [BookController::class, 'index'])->name('books.index');
//Route::get('books/{book}/show', [BookController::class, 'show'])->name('books.show');
//Route::get('books/create', [BookController::class, 'create'])->name('books.create');
//Route::post('books', [BookController::class, 'store'])->name('books.store');
//Route::get('books/{book}/edit', [BookController::class, 'edit'])->name('books.edit');
//Route::put('books', [BookController::class, 'update'])->name('books.update');
//Route::delete('books/{book}', [BookController::class, 'destroy'])->name('books.destroy');



