@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Add product</div>
                    <form action="{{route('product.save', ['id' => $product->id])}}" method="post">
                        @csrf
                        <table class="table table-bordered">
                            <tr>
                                <td>name</td>
                                <td>
                                    <input type="text" name="name" value="{{$product->name}}">
                                    @if ($errors->has('name'))
                                        <div class="alert alert-danger">{{$errors->first('name')}}</div>
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <td>price</td>
                                <td>
                                    <input type="text" name="price" value="{{$product->price}}">
                                    @if ($errors->has('price'))
                                        <div class="alert alert-danger">{{$errors->first('price')}}</div>
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <td>category ID</td>
                                <td>
                                    <input type="text" name="category_id" value="{{$product->category_id}}">
                                    @if ($errors->has('category_id'))
                                        <div class="alert alert-danger">{{$errors->first('category_id')}}</div>
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>
                                    <input type="text" name="description" value="{{$product->description}}">
                                </td>
                            </tr>
                        </table>
                        <input type="submit" value="сохранить">
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
