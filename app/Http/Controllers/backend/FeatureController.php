<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\backend\FeatureRequest;
use App\Models\Feature;
use Illuminate\Support\Facades\Request;

class FeatureController extends Controller {


  public function index() {

    
    $model = Feature::query();

    
    $name = Request::input('name');

    if ($name) {
      $model->whereRaw('LOWER(CONVERT(`name` USING utf8mb4)) LIKE "%' . $name . '%"');
    }

    return view('backend.features.index', [

      
      'features' => $model->latest()->paginate(10),

      
      'featuresCount' => $model->count(),
    ]);
  }


  public function create() {
    return view('backend.features.create');
  }


  public function store(FeatureRequest $request) {
    Feature::create($request->all());
    return redirect()->route('backend.features.index')->with('success', 'особенность создана');
  }


  public function edit($locale, Feature $feature) {
    return view('backend.features.edit', ['feature' => $feature]);
  }


  public function update($locale, FeatureRequest $request, Feature $feature) {
    $feature->update($request->all());
    return redirect()->route('backend.features.index')->with('success', 'особенность изменена');
  }


  public function destroy($locale, Feature $feature) {
    $feature->delete();
    return redirect()->route('backend.features.index')->with('success', 'особенность удалена');
  }
}
