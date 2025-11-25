<?php

namespace App\Http\Requests\backend;

use Illuminate\Foundation\Http\FormRequest;

class MessageRequest extends FormRequest {

  
  public function authorize() {
    return true;
  }

  
  public function rules() {
    return [
      'message' => 'required',
      
    ];
  }

  
  public function messages() {
    return [
      'message.required' => 'сообщение обязательно',
      
      
    ];
  }
}
