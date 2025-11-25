<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Site extends Model {

  use HasFactory;

  
  protected $fillable = [
    'name',
    'desc',
    'url',
    'file',
    'category_id',
  ];

  
  public function sitephotos() {
    return $this->hasMany(Sitephoto::class);
  }

  
  public function category() {
    return $this->belongsTo(Category::class);
  }

  
  public function brands() {
    return $this->belongsToMany(Brand::class)->withTimestamps();
  }

  
  public function features() {
    return $this->belongsToMany(Feature::class)->withTimestamps();
  }

  
  public function users() {
    return $this->belongsToMany(User::class)->withPivot('comment')->withTimestamps();
  }

  
  public function reviews() {
    return $this->hasMany(Review::class);
  }

  public static function getList($request) {

    $sites = self::query();
    $sites->select('sites.*');

    
    if ($request->category_id) {
      $sites
        ->join('categories', 'categories.id', '=', 'sites.category_id')
        ->where('categories.id', $request->category_id);
    }

    
    if ($request->brand_id) {
      $sites
        ->join('brand_site', 'brand_site.site_id', '=', 'sites.id')
        ->where('brand_site.brand_id', $request->brand_id);
    }

    
    if ($request->feature_id) {
      $sites
        ->join('feature_site', 'feature_site.site_id', '=', 'sites.id')
        ->where('feature_site.feature_id', $request->feature_id);
    }

    
    $sites->withCount('reviews');

    

    
    if ($request->reviews_count) {
      $sites->orderBy('reviews_count', 'desc');
    }

    
    $sites->withSum('reviews', 'rating');

    


    
    $sites->withCount([
      'reviews AS ratingMinus' => function ($query) {
        $query->select(DB::raw("SUM(rating)"))->where('rating', -1);
      }
    ]);

    


    
    $sites->withCount([
      'reviews AS ratingPlus' => function ($query) {
        $query->select(DB::raw("SUM(rating)"))->where('rating', 1);
      }
    ]);

    

    
    $sites->withCount([
      'reviews AS ratingPlusMinus' => function ($query) {
        $query->select(DB::raw("COUNT(rating)"))->where('rating', '!=', 0);
      }
    ]);

    
    if ($request->reviews_sum_rating) {
      $sites->orderBy('reviews_sum_rating', 'desc');
    }

    
    
    

    return $sites;
  }
}
