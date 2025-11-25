<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class AuthenticateApi extends Middleware {

  protected function redirectTo($request) {

    if (!$request->expectsJson()) {
      return route('frontend.signin.create');
    }

  }
}
