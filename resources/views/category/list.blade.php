@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <a href="{{route('category.create')}}">Добавить</a>

                    <div class="panel-heading">Товары</div>
                    <table class="table table-bordered">
                        @foreach($categories as $category)
                            <tr>
                                <td>{{$category->id}}</td>
                                <td>{{$category->name}}</td>
                                <td>{{$category->description}}</td>
                                <td>
                                    <a href="{{route('category.edit', ['id' => $category->id, 'category' => $category->id])}}">edit</a>
                                    <a href="{{route('category.delete', ['id' => $category->id, 'category' => $category->id])}}">delete</a>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
