<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use App\Http\Requests\user\UserRequest;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller {

  public function index($locale) {

    
    $user = Auth::guard('users')->user();

    return view('user.profile', [
      'user' => $user,
    ]);

  }

  public function update($locale, UserRequest $request) {

    
    $user = Auth::guard('users')->user();

    $user->update($request->all());

    return redirect()->route('user.profile.index')->with('success', 'профиль изменен');
  }

}
