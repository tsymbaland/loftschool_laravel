@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <a href="{{route('product.create')}}">Добавить</a>

                    <form action="{{route('product.search')}}" method="get" id="searchbox-form">
                        <input type="text" id="searchbox" name="search">
                        <button class="btn btn-info" type="submit">SEARCH!</button>
                    </form>
                    <div class="panel-heading">Товары</div>
                    <table class="table table-bordered">
                        @foreach($products as $product)
                            <tr>
                                <td>{{$product->id}}</td>
                                <td>{{$product->name}}</td>
                                <td>{{$product->category->name}}</td>
                                <td>{{$product->price}}</td>
                                <td>{{$product->description}}</td>
                                <td>
                                    <a href="{{route('product.edit', ['id' => $product->id, 'product' => $product->id])}}">edit</a>
                                    <a href="{{route('product.delete', ['id' => $product->id, 'product' => $product->id])}}">delete</a>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
