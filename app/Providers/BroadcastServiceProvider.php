<?php

namespace App\Providers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Broadcast;
use Illuminate\Support\ServiceProvider;

class BroadcastServiceProvider extends ServiceProvider {

  public function boot() {

    

    
    

    
    Broadcast::routes(['middleware' => ['web', 'AuthUserOrAdminForWebsocket']]);

    require base_path('routes/channels.php');
  }
}
