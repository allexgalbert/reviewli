<?php



namespace App\View\Components;

use Illuminate\View\Component;

class WelcomeModalComponent extends Component {

  public function __construct() {
  }

  
  public function render() {

    if (empty(session('welcomemodalcomponent'))) {

      session(['welcomemodalcomponent' => 1]);

      return view('components.modal', [
        'header' => 'welcome',
        'body' => 'Lorem Ipsum',
      ]);

    }

  }
}
