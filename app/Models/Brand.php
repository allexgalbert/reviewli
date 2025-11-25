<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model {

  use HasFactory;

  
  protected $fillable = [
    'name',
    'desc',
    'url',
    'file',
    'footer',
  ];

  
  public function sites() {
    return $this->belongsToMany(Site::class)->withTimestamps();
  }

}
