@extends('layout', ['title'=> 'Home'])

@section('page-content')
    <table width="500" border="1" cellspacing="0" cellpadding="0" align>
        <th>title</th>
        <th>author</th>
        <th>price</th>
        <th>Action</th>
        @foreach($books as $book)
            <tr>
                <td>{{$book->title}}</td>
                <td>{{$book->author}}</td>
                <td>{{$book->price}}</td>
                <td><a href="{{route('books.show', ['id'=>$book->id])}}">View</a></td>
            </tr>
        @endforeach
    </table>

@endsection
