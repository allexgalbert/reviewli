<?php

namespace App\Providers;

use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\URL;

class RouteServiceProvider extends ServiceProvider {

  
  public const HOME = '/';

  
  

  
  public function boot() {

    
    $this->setmylocale();

    $this->configureRateLimiting();

    $this->routes(function () {

      
      
      
      
      

      
      Route::namespace($this->namespace)
        ->middleware('web')
        ->group(base_path('routes/web.php'));
      

      
      Route::namespace($this->namespace)
        ->middleware('web')
        ->prefix('{locale}')
        ->group(base_path('routes/frontend.php'));

      
      Route::namespace($this->namespace)
        ->middleware(['web', 'authUser:users'])
        ->prefix('/{locale}/user')
        ->name('user.')
        ->group(base_path('routes/user.php'));

      
      Route::namespace($this->namespace)
        ->middleware(['web', 'authAdmin:admins'])
        ->prefix('/{locale}/backend')
        ->name('backend.')
        ->group(base_path('routes/backend.php'));

      
      Route::namespace($this->namespace)
        ->middleware(['api', 'authApi:api'])
        ->prefix('/{locale}/api')
        ->group(base_path('routes/api.php'));

      
      

      
      

      


    });
  }

  
  protected function configureRateLimiting() {
    RateLimiter::for('api', function (Request $request) {
      return Limit::perMinute(60)->by(optional($request->user())->id ?: $request->ip());
    });
  }

  
  protected function setmylocale() {

    
    $locales = ['ru', 'en', 'be', 'uk'];

    
    $locale = \Illuminate\Support\Facades\Request::segment(1);

    
    if ($locale == 'broadcasting') {
      App::setLocale('ru');
      URL::defaults(['locale' => 'ru']);
      return;
    }

    
    if (empty($locale) || !in_array($locale, $locales)) {

      
      $path = \Illuminate\Support\Facades\Request::getRequestUri();

      
      if (!empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])) {
        $browserLang = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);
      } else {
        $browserLang = 'ru';
      }

      
      if (in_array($browserLang, $locales)) {
        $this->redirect($path, '/' . $browserLang . $path);
      } else {
        
        $this->redirect($path, '/ru' . $path);
      }

    } else {
      
      App::setLocale($locale);
      URL::defaults(['locale' => $locale]);
    }

  }

}
