@extends('layouts.frontend')

@section('title')
  главная
@endsection

@section('content')

  {{--вызываем фасад в шаблоне--}}
  {{--  {{myalias::mymethod1()}}--}}
  {{--  {{myalias::mymethod2()}}--}}

  <div class='row justify-content-md-center'>

    <div class='col-8'>

      <div class='row mb-5'>
        <div class='col-4'>
          <svg class="rounded-3" width="100%" height="100%"
               xmlns="http://www.w3.org/2000/svg">
            <rect width="100%" height="100%" fill="#868e99"></rect>
            <text x="40%" y="50%" fill="#dee2e6">image</text>
          </svg>
        </div>
        <div class='col-8'>
          Lorem Ipsum
        </div>
      </div>

      <div class='row mb-5'>
        <div class='col-8'>
          Lorem Ipsum
        </div>
        <div class='col-4'>
          <svg class="rounded-3" width="100%" height="100%"
               xmlns="http://www.w3.org/2000/svg">
            <rect width="100%" height="100%" fill="#868e99"></rect>
            <text x="40%" y="50%" fill="#dee2e6">image</text>
          </svg>
        </div>
      </div>

      <div class='row'>
        <div class='col-4'>
          <svg class="rounded-3" width="100%" height="100%"
               xmlns="http://www.w3.org/2000/svg">
            <rect width="100%" height="100%" fill="#868e99"></rect>
            <text x="40%" y="50%" fill="#dee2e6">image</text>
          </svg>
        </div>
        <div class='col-8'>
          Lorem Ipsum
        </div>
      </div>

    </div>

  </div>

@endsection

@section('pagejs')
  <script src="{{mix('/js/frontend/home.js')}}"></script>
@endsection
