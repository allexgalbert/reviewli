<?php



namespace App\View\Components;

use Illuminate\View\Component;

class UnreadMessagesToUserComponent extends Component {

  
  public function render() {
    return view('frontend.global.toastContainer');
  }
}
