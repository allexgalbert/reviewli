<?php

namespace App\Http\Requests\backend;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequest extends FormRequest {

  
  public function authorize() {
    return true;
  }

  
  public function rules() {
    return [
      'name' => 'required',
    ];
  }

  
  public function messages() {
    return [
      'name.required' => 'имя обязательно',
    ];
  }
}
