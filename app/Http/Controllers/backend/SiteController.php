<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\backend\SiteRequest;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Feature;
use App\Models\Site;
use App\Models\Sitephoto;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Storage;

class SiteController extends Controller {


  public function index() {
    return view('backend.sites.index', [
      'sites' => Site::query()->latest()->paginate(10)
    ]);
  }


  public function create() {
    return view('backend.sites.create', [
      'categories' => Category::all(),
      'brands' => Brand::all(),
      'features' => Feature::all(),
    ]);
  }


  public function store(SiteRequest $request) {

    $site = Site::create($request->all());

    
    if ($request->hasFile('file')) {
      $file = $request->file('file')->store('sites', 'public');
      $site->update(['file' => $file]);
    }

    
    $site->brands()->attach($request->brand_id);
    $site->features()->attach($request->feature_id);

    
    if ($request->hasFile('sitephotos')) {
      foreach ($request->sitephotos as $key => $fileObject) {
        $file = $fileObject->store('sites', 'public');
        Sitephoto::create(['site_id' => $site->id, 'file' => $file]);
      }
    }

    return redirect()->route('backend.sites.index')->with('success', 'сайт создан');
  }


  public function edit($locale, Site $site) {

    $site->load('category');
    $site->load('brands');
    $site->load('features');

    return view('backend.sites.edit', [
      'site' => $site,
      'categories' => Category::all(),
      'brands' => Brand::all(),
      'features' => Feature::all(),
      'sitephotos' => $site->sitephotos()->get(),
    ]);
  }


  public function update($locale, SiteRequest $request, Site $site) {

    $site->update($request->all());

    
    if ($request->hasFile('file')) {
      $file = $request->file('file')->store('sites', 'public');
      $site->update(['file' => $file]);
    }

    
    $site->brands()->sync($request->brand_id);
    $site->features()->sync($request->feature_id);

    
    if ($request->hasFile('sitephotos')) {
      foreach ($request->sitephotos as $key => $fileObject) {
        $file = $fileObject->store('sites', 'public');
        Sitephoto::create(['site_id' => $site->id, 'file' => $file]);
      }
    }

    return redirect()->route('backend.sites.index')->with('success', 'сайт изменен');
  }


  public function destroy($locale, Site $site) {
    $this->destroyfile($locale, $site);
    $site->delete();
    return redirect()->route('backend.sites.index')->with('success', 'сайт удален');
  }

  
  public function destroyfile($locale, Site $site) {
    
    Storage::disk('public')->delete($site->file);
    $site->update(['file' => null]);
    return back();
  }

  public function destroysitephoto($locale, Site $site, Request $request) {

    
    $sitephotos_id = $request::input('sitephotos_id');

    
    $file = $site->sitephotos()->where('id', $sitephotos_id)->first();

    
    Storage::disk('public')->delete($file->file);

    
    $file->delete();

    return back();
  }
}
