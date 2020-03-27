<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Requests\CategoryRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class CategoryController extends Controller
{
    function index(Request $request)
    {
        $categories = Category::query()->orderBy('id', 'DESC')->get();

        return view('category.list', ['categories' => $categories]);
    }

    function create()
    {
        return view('category.create');
    }

    public function add(CategoryRequest $request)
    {
        $this->writeParamsFromRequest($request, new Category());

        return redirect()->route('categories');
    }

    public function edit(Category $category)
    {
        // Mail::to(\Auth::user())->send(new CategoryEdit(['category' => $category]));
        return view('category.edit', ['category' => $category]);
    }

    public function save(CategoryRequest $request)
    {
        $category = Category::query()->find($request->id);
        $this->writeParamsFromRequest($request, $category);

        return redirect()->route('categories');
    }

    public function delete(Request $request)
    {
        Category::destroy($request->id);

        return redirect()->route('categories');
    }

    private function writeParamsFromRequest(
        CategoryRequest $request,
        Category $category
    ) {
        $category->name = $request->name;
        $category->description = $request->description;
        $category->save();
    }
}
