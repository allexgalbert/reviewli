<?php




namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller {

  
  public function create($locale, $email, Request $request) {

    $request->merge([
      'email' => $email,
    ]);


    $validator = Validator::make($request->all(), [
      'email' => 'required|email|unique:users',
    ]);

    if ($validator->fails()) {
      return [
        'status' => false,
        'error' => $validator->errors()->toJson()
      ];

    }

    $password = 123;
    $request->merge(['password' => Hash::make($password)]);

    $credentials = $request->only('email', 'password');
    $user = User::create($credentials);

    $result = new UserResource($user);

    return [
      'status' => true,
      'user' => $result->toJson(),
      'password' => $password,
    ];

  }
}
