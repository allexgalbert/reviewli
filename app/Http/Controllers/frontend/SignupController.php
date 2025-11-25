<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Jobs\NameJob;
use App\Mail\SignupUser;
use App\Models\User;
use App\Notifications\NotificationMail;
use App\Notifications\NotificationDatabase;
use App\Notifications\NotificationBroadcast;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;


class SignupController extends Controller {


  public function create() {
    return view('frontend.signup');
  }


  public function store(Request $request) {


    $request->validate([
      'email' => 'required|email|unique:users',
    ]);


    $password = 123;
    $request->merge(['password' => Hash::make($password)]);

    
    $credentials = $request->only('email', 'password');
    $user = User::create($credentials);

    
    Mail::to($user->email)
      ->send(new SignupUser($user, $password));

    return redirect()->route('frontend.signup.create')
      ->with('success', 'юзер создан. логин ' . $request->email . ' пароль ' . $password);

  }
}
