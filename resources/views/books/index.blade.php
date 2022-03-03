@extends('layout', ['title'=> 'Home'])

@section('page-content')
    <div class="row">
        <div class="col-lg-10">
            <form action="{{ route('books.index') }}" method="GET" >
                <div class="form-row">
                    <div class="col-8">
                        <input type="text" class="form-control" id="search" name="search" placeholder="Search"
                               value="{{ request('search') }}">
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-default">Search</button>

                    </div>
                </div>
            </form>

        </div>

        <div class="col-lg-2">
            <p class="text-right"><a href="{{route('books.create')}}" class="btn btn-primary">New Book</a></p>
        </div>
    </div>

    <table class="table table-striped table-bordered">
        <th>ID</th>
        <th>title</th>
        <th>author</th>
        <th>price</th>
        <th colspan="3" class="text-center">Action</th>
        @foreach($books as $book)
            <tr>
                <td>{{$book->id}}</td>
                <td>{{$book->title}}</td>
                <td>{{$book->author}}</td>
                <td>{{$book->price}}</td>
                <td>
                    <a href="{{route('books.show',$book->id)}}">View</a>
                </td>
                <td>
                    <a href="{{route('books.edit',$book->id)}}">Edit</a>
                </td>

                <td>
                    <form method="post" action="{{route('books.destroy',$book)}}" onsubmit="return confirm('Sure?')">
                        @csrf
                        @method('DELETE')
                        <input type="submit" value="Delete" class="btn btn-link text-danger"/>
                    </form>
                </td>
            </tr>
        @endforeach
        </table>

    {{ $books->withQueryString()->links() }}

@endsection
