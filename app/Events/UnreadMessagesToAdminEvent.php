<?php



namespace App\Events;


use App\Models\User;


use Illuminate\Broadcasting\Channel;


use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class UnreadMessagesToAdminEvent implements ShouldBroadcast {

  use Dispatchable, InteractsWithSockets, SerializesModels;

  public $queue = 'unreadmessagestoadminevent';

  public $user, $message;

  public function __construct(User $user, $message) {
    $this->user = $user;
    $this->message = $message;
  }

  public function broadcastOn() {
    return new Channel('UnreadMessagesToAdminChannel');
  }
}
