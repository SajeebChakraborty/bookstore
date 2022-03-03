@extends('layout', ['title'=> 'Home'])

@section('page-content')
    <div class="row">
        <div class="col-lg-12">
            <p class="text-end"><a href="{{route('books.create')}}" class="btn btn-primary">New Book</a></p>
        </div>
    </div>

    <table class="table table-striped table-bordered">
        <th>ID</th>
        <th>title</th>
        <th>author</th>
        <th>price</th>
        <th colspan="2" >Action</th>
        @foreach($books as $book)
            <tr>
                <td>{{$book->id}}</td>
                <td>{{$book->title}}</td>
                <td>{{$book->author}}</td>
                <td>{{$book->price}}</td>
                <td>
                    <a href="{{route('books.show',$book->id)}}">View</a> |
                    <a href="{{route('books.edit',$book->id)}}">Edit</a> |

                </td>
                <td>
                    <form method="post" action="{{route('books.destroy',$book)}}" onsubmit="return confirm('Sure?')">
                        @csrf
                        @method('DELETE')
                        <input type="submit" value="Delete" class="btn btn-link" />
                    </form>
                </td>
            </tr>
        @endforeach
    </table>

@endsection
