<?php

namespace App\Http\Controllers\user;

use App\Events\ChatEvent;
use App\Events\UnreadMessagesToAdminEvent;
use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Message;
use Illuminate\Support\Facades\Auth;

use App\Http\Requests\backend\MessageRequest;
use Illuminate\Support\Facades\Validator;

class ChatController extends Controller {

  
  public function index() {

    
    $user = Auth::guard('users')->user();

    
    $user->unreadmessages_touser = 0;
    $user->save();

    
    $messages = Message::query()->where('user_id', $user->id)->oldest()->get();

    return view('user.chat', [
      'messagesList' => view('backend.messages.message', ['messages' => $messages])->render(),
      'messages' => $messages,
      'user' => $user,
    ]);
  }

  
  public function update($locale, MessageRequest $request) {

    
    $user = Auth::guard('users')->user();

    
    $admin = Admin::query()->find(1);
    

    
    $request->merge([
      'user_id' => $user->id,
      'admin_id' => $admin->id,
      'direction' => 1,
    ]);
    $message = Message::create($request->all());

    
    $user->increment('unreadmessages_toadmin');
    

    
    $message1 = view('backend.messages.message', ['messages' => [$message]])->render();

    
    broadcast(new ChatEvent($user, $message1))->toOthers();
    

    
    $message2 = view('backend.global.toast', ['messages' => [$message]])->render();

    
    broadcast(new UnreadMessagesToAdminEvent($user, $message2))->toOthers();
    

    return $message1;

    return redirect()->route('user.chat.index')->with('success', 'сообщение добавлено');
  }

}
