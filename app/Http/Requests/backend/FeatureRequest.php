<?php

namespace App\Http\Requests\backend;

use Illuminate\Foundation\Http\FormRequest;

class FeatureRequest extends FormRequest {

  
  public function authorize() {
    return true;
  }

  
  public function rules() {
    return [
      'name' => 'required',
      'footer' => 'integer',
    ];
  }

  
  public function messages() {
    return [
      'name.required' => 'название обязательно',
    ];
  }
}
