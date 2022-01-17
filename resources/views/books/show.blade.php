@extends('layout',['title'=>'Show'])

@section('page-content')
<table border="1" width="50%" >
        <tr>
            <th>Title</th>
            <td>{{$book->title}}</td>
        </tr>
        <tr>
            <th>ISBN No</th>
            <td>{{$book->isbn}}</td>
        </tr>
        <tr>
            <th>Author</th>
            <td>{{$book->author}}</td>
        </tr>
        <tr>
            <th>Stock</th>
            <td>{{$book->stock}}</td>
        </tr>
        <tr>
            <th>Price</th>
            <td>{{$book->price}}</td>
        </tr>
    </table>
    <p><a href="{{route('books.index')}}">Back</a></p>

@endsection
