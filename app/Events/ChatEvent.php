<?php



namespace App\Events;


use App\Models\User;


use Illuminate\Broadcasting\PrivateChannel;


use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ChatEvent implements ShouldBroadcast {

  use Dispatchable, InteractsWithSockets, SerializesModels;

  public $queue = 'chatevent';

  public $user, $message;

  public function __construct(User $user, $message) {
    $this->user = $user;
    $this->message = $message;
  }

  public function broadcastOn() {
    return new PrivateChannel('ChatChannel.' . $this->user->id);
  }

}
