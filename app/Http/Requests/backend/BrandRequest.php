<?php

namespace App\Http\Requests\backend;

use Illuminate\Foundation\Http\FormRequest;

class BrandRequest extends FormRequest {

  
  public function authorize() {

    return true;

    
    

    
    

    
    

    
    
  }

  
  public function rules() {

    return [
      'name' => 'required',
      'file' => 'image',
      'footer' => 'integer',
      
      
    ];

  }

  
  public function messages() {

    return [
      'name.required' => 'название обязательно',
      'file.image' => 'файл должен быть картинкой',
      'desc.required' => 'описание обязательно',
      'url.required' => 'урл обязателен',
      'url.url' => 'урл должен быть правильным',
    ];

  }

  
  
  
  

  
  
  
  

  
  
  

  
  

  
  

  
  

  
  
  
  


}
