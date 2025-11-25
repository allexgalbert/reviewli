<?php

namespace App\Http\Controllers\backend;

use App\Events\ChatEvent;
use App\Events\UnreadMessagesToUserEvent;
use App\Http\Controllers\Controller;
use App\Http\Requests\backend\MessageRequest;
use App\Models\Message;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller {

  
  public function index($locale, User $user) {

    
    $user->unreadmessages_toadmin = 0;
    $user->save();

    
    $messages = Message::query()->where('user_id', $user->id)->oldest()->get();

    return view('backend.messages.index', [
      'messagesList' => view('backend.messages.message', ['messages' => $messages])->render(),
      'messages' => $messages,
      'user' => $user,
    ]);
  }

  
  public function update($locale, MessageRequest $request, User $user) {

    
    $admin = Auth::guard('admins')->user();
    

    
    $request->merge([
      'user_id' => $user->id,
      'admin_id' => $admin->id,
      'direction' => -1,
    ]);
    $message = Message::create($request->all());

    
    $user->increment('unreadmessages_touser');
    

    
    $message1 = view('backend.messages.message', ['messages' => [$message]])->render();

    
    broadcast(new ChatEvent($user, $message1))->toOthers();
    

    
    $message2 = view('frontend.global.toast', ['messages' => [$message]])->render();

    
    broadcast(new UnreadMessagesToUserEvent($user, $message2))->toOthers();
    

    return $message1;

    return redirect()->route('backend.messages.index', $user)->with('success', 'сообщение добавлено');
  }
}
