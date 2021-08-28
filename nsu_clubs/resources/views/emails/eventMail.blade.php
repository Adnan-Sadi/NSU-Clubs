@component('mail::message')
# New Event!!

**{{ $club->club_name }}** added a new event. Check it out,

@component('mail::panel')
# {{ $event->event_name }}

{{ $event->event_description }}
@endcomponent

@component('mail::button', ['url' => 'event/'.$event->event_id, 'color' => 'success'])
Link
@endcomponent

Thanks,<br>
NSU Clubs
@endcomponent
