<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductRequest;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with('category')->orderBy('id', 'DESC')->get();

        return view('product.list', ['products' => $products]);
    }

    public function create()
    {
        return view('product.create');
    }

    public function add(ProductRequest $request)
    {
        $this->writeParamsFromRequest($request, new Product());

        return redirect()->route('products');
    }

    public function edit(Product $product)
    {
        // Mail::to(\Auth::user())->send(new ProductEdit(['product' => $product]));
        return view('product.edit', ['product' => $product]);
    }

    public function save(ProductRequest $request)
    {
        $product = Product::query()->find($request->id);
        $this->writeParamsFromRequest($request, $product);

        return redirect()->route('products');
    }

    public function delete(Request $request)
    {
        Product::destroy($request->id);

        return redirect()->route('products');
    }

    public function search(Request $request)
    {
        $search = $request->search;
        if ($search) {
            $search = "%$search%";
            $products = Product::query()
                ->whereRaw(
                    "UPPER(name) LIKE :srch",
                    ["srch" => $search]
                )
                ->get();

            return view('product.list', ['products' => $products]);
        }

        return redirect()->route('products');
    }

    private function writeParamsFromRequest(
        ProductRequest $request,
        Product $product
    ) {
        $product->name = $request->name;
        $product->price = $request->price;
        $product->category_id = $request->category_id;
        $product->description = $request->description;
        $product->photo = $request->photo;
        $product->save();
    }
}
