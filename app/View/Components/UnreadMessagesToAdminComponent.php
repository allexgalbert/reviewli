<?php



namespace App\View\Components;

use Illuminate\Support\Facades\Request;
use Illuminate\View\Component;

class UnreadMessagesToAdminComponent extends Component {

  
  public function render() {

    
    if (!Request::routeIs('backend.messages.index')) {
      return view('backend.global.toastContainer');
    }

  }
}
