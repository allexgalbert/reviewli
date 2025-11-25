<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomeController extends Controller {

  public function index(Request $request, $locale) {

    return view('frontend.home');
  }

}
