<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable {

  use HasFactory, Notifiable;

  
  protected $fillable = [
    'name',
    'email',
    'password',
    'ban',
    'disablereviews',
  ];

  
  protected $hidden = [
    'password',
    'remember_token',
  ];

  
  protected $casts = [
    'email_verified_at' => 'datetime',
  ];

  
  public function sites() {
    return $this->belongsToMany(Site::class)->withPivot('comment')->withTimestamps();
  }

  
  public function reviews() {
    return $this->hasMany(Review::class);
  }

  
  public function messages() {
    return $this->hasMany(Message::class);
  }

}
