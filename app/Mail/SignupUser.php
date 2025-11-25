<?php

namespace App\Mail;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SignupUser extends Mailable {

  use Queueable, SerializesModels;

  
  protected $user, $password;

  public function __construct(User $user, $password) {
    $this->user = $user;
    $this->password = $password;
  }

  
  public function build() {
    return $this->from('support@reviewli.loc')
      
      ->markdown('emails.signupuserMarkdown')
      ->text('emails.signupuserPlain')
      ->with([
        'user' => $this->user,
        'password' => $this->password,
      ]);
  }

}
