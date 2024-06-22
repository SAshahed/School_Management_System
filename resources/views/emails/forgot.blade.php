@component('mail::message')
Hello {{$user->name}},

<p> We Understand it happend </p>

@component('mail::button',['url'=> url('reset/' .$user->remember_token)])
Reset Your PASSWORD
@endcomponent

<p> In case you have any issues receiving your password ,please contact us </p>

Thanks ,<br>
{{config('app.name')}}

@endcomponent


