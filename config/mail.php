<?php

return [

  'default' => env('MAIL_MAILER', 'smtp'),

  'mailers' => [

    'smtp' => [
      'transport' => 'smtp',
      'host' => env('MAIL_HOST', ''),
      'port' => env('MAIL_PORT', 587),
      'encryption' => env('MAIL_ENCRYPTION', 'tls'),
      'username' => env('MAIL_USERNAME'),
      'password' => env('MAIL_PASSWORD'),
      'timeout' => null,
      'auth_mode' => null,
    ],

    //Amazon SES
    'ses' => [
      'transport' => 'ses',
    ],

    'mailgun' => [
      'transport' => 'mailgun',
    ],

    'postmark' => [
      'transport' => 'postmark',
    ],

    'sendmail' => [
      'transport' => 'sendmail',
      'path' => '/usr/sbin/sendmail -bs',
    ],

    'log' => [
      'transport' => 'log',
      'channel' => env('MAIL_LOG_CHANNEL'),
    ],

    'array' => [
      'transport' => 'array',
    ],
  ],

  //заголовок From
  'from' => [
    'address' => env('MAIL_FROM_ADDRESS', 'hello@example.com'),
    'name' => env('MAIL_FROM_NAME', 'Example'),
  ],

  //заголовок reply_to
  'reply_to' => [
    'address' => env('MAIL_FROM_ADDRESS', 'hello@example.com'),
    'name' => env('MAIL_FROM_NAME', 'Example'),
  ],

  //верстка markdown
  'markdown' => [
    'theme' => 'default',

    'paths' => [
      resource_path('views/vendor/mail'),
    ],

  ],

];
