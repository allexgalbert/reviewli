<?php



namespace App\Notifications;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class NotificationMail extends Notification {

  use Queueable;

  public function __construct(User $user, $message) {
    $this->user = $user;
    $this->message = $message;
  }

  
  public function via($notifiable) {
    return ['mail'];
  }

  public function toMail($notifiable) {

    
    
    
    
    
    
    
    

    
    
    
    
    

    
    return (new MailMessage)
      ->markdown('mail', [
        'user' => $this->user,
        'text' => $this->message,
      ]);
  }

  public function toArray($notifiable) {
    return [
    ];
  }
}
