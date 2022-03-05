<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('search')) {
            $books = Book::where('title', 'like', '%' . $request->get('search') . '%')
                ->orWhere('author', 'like', '%' . $request->get('search') . '%')
                ->paginate(10);
        } else {
            $books = Book::paginate(10);
        }

        return view('books.index', ['books' => $books]);
    }

    public function show(Request $request, Book $book)
    {
        return view('books.show', ['book' => $book]);
    }

    public function create()
    {
        return view('books.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'  => 'required|max:255',
            'isbn'   => 'required|max:12',
            'author' => 'required|max:255',
            'price'  => 'required|numeric',
            'stock'  => 'required|numeric|integer',
        ]);

        Book::create($request->all());

        return redirect()->route('books.index');

    }

    public function edit(Request $request, $id)
    {
        $book = Book::find($id);

        return view('books.edit', ['book' => $book]);
    }

    public function update(Request $request)
    {
        $request->validate([
            'title'  => 'required|max:255',
            'isbn'   => 'required|max:12',
            'author' => 'required|max:255',
            'price'  => 'required|numeric',
            'stock'  => 'required|numeric|integer',
        ]);

        $book = Book::find($request->id);
        $book->update($request->all());

        return redirect()->route('books.index');
    }

    public function destroy(Request $request, $id)
    {
        $book = Book::find($id);
        $book->delete();

        return redirect()->route('books.index');
    }

}






