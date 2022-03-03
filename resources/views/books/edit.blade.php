@extends('layout', ['title'=> 'Home'])

@section('page-content')
    <legend>Create Book</legend>
    <form method="post" action="{{route('books.update',$book)}}">
        @csrf
        @method('PUT')
        <input type="hidden" name="id" value="{{$book->id}}">
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Title</label>
            <div class="col-sm-10">
                <input type="text" class="form-control @error('title') is-invalid @enderror" value="{{old('title',$book->title)}}" id="title" name="title" placeholder="Title">
                <div class="invalid-feedback">{{$errors->first('title')}}</div>
            </div>

        </div>
        <div class="form-group">
            <label for="author" class="col-sm-2 control-label">Author</label>
            <div class="col-sm-10">
                <input type="text" class="form-control @error('author') is-invalid @enderror" value="{{old('author',$book->author)}}" id="author" name="author" placeholder="Author">
                <div class="invalid-feedback">{{$errors->first('author')}}</div>
            </div>
        </div>
        <div class="form-group">
            <label for="isbn" class="col-sm-2 control-label">ISBN</label>
            <div class="col-sm-10">
                <input type="text" class="form-control @error('isbn') is-invalid @enderror" value="{{old('isbn',$book->isbn)}}" id="isbn" name="isbn" placeholder="ISBN">
                <div class="invalid-feedback">{{$errors->first('isbn')}}</div>
            </div>
        </div>
        <div class="form-group">
            <label for="stock" class="col-sm-2 control-label">Stock</label>
            <div class="col-sm-10">
                <input type="text" class="form-control @error('stock') is-invalid @enderror" value="{{old('stock',$book->stock)}}" id="stock" name="stock" placeholder="Stock">
                <div class="invalid-feedback">{{$errors->first('stock')}}</div>
            </div>
        </div>
        <div class="form-group">
            <label for="price" class="col-sm-2 control-label">Price</label>
            <div class="col-sm-10">
                <input type="text" class="form-control @error('price') is-invalid @enderror" value="{{old('price',$book->price)}}" id="price" name="price" placeholder="Price">
                <div class="invalid-feedback">{{$errors->first('price')}}</div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>


@endsection



