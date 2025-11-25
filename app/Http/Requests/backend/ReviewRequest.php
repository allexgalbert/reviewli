<?php

namespace App\Http\Requests\backend;

use Illuminate\Foundation\Http\FormRequest;

class ReviewRequest extends FormRequest {

  
  public function authorize() {
    return true;
  }

  
  public function rules() {
    return [
      'comment' => 'required',
    ];
  }

  
  public function messages() {
    return [
      'comment.required' => 'отзыв обязателен',
    ];
  }
}
