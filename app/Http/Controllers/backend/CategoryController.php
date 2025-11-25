<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\backend\CategoryRequest;
use App\Models\Category;
use Illuminate\Support\Facades\Request;

class CategoryController extends Controller {


  public function index() {

    
    $model = Category::query();

    
    $name = Request::input('name');

    if ($name) {
      $model->whereRaw('LOWER(CONVERT(`name` USING utf8mb4)) LIKE "%' . $name . '%"');
    }

    return view('backend.categories.index', [

      
      'categories' => $model->latest()->paginate(10),

      
      'categoriesCount' => $model->count(),
    ]);
  }


  public function create() {
    return view('backend.categories.create');
  }


  public function store(CategoryRequest $request) {
    $request->merge(['footer' => $request->has('footer')]);
    Category::create($request->all());
    return redirect()->route('backend.categories.index')->with('success', 'категория создана');
  }


  public function edit($locale, Category $category) {
    return view('backend.categories.edit', ['category' => $category]);
  }


  public function update($locale, CategoryRequest $request, Category $category) {
    $request->merge(['footer' => $request->has('footer')]);
    $category->update($request->all());
    return redirect()->route('backend.categories.index')->with('success', 'категория изменена');
  }


  public function destroy($locale, Category $category) {
    $category->delete();
    return redirect()->route('backend.categories.index')->with('success', 'категория удалена');
  }
}
