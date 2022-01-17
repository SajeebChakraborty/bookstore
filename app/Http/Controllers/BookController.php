<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index()
    {
        $books = Book::select('id','title', 'author','price')
                    ->orderBy('author')
                    ->get();


        return view('books.index',['books'=>$books]);
    }

    public function show(Request $request)
    {
        $book = Book::find($request->id);

        return view('books.show',['book'=>$book]);
    }


}
