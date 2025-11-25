@foreach($messages as $message)
  <li class="list-group-item">

    @if($message->direction == -1)
      {{$message->admin->name}},
    @elseif($message->direction == 1)
      {{$message->user->name}},
    @endif

    {{\Carbon\Carbon::parse($message->created_at)->format('d.m.Y H:i')}}

    <p>
      {{$message->message}}
    </p>

  </li>
@endforeach
