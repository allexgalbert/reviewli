<?php



namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class MyServiceProvider extends ServiceProvider {

  
  public function register() {

    

    
    $this->app->bind('cellname', 'App\MyClasses\MyClass');

    
    

  }

  public function boot() {
  }
}
