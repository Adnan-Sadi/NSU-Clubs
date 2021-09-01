@component('mail::message')
# New Notice!!

**{{ $club->club_name }}** added a new notice. Check it out,


@component('mail::panel')
# {{ $notice->title }}

{{ $notice->description }}
@endcomponent

@component('mail::button', ['url' => 'http://127.0.0.1:8000/home/'.$club->id, 'color' => 'success'])
Link
@endcomponent

Thanks,<br>
NSU Clubs
@endcomponent
