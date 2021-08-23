@component('mail::message')
# New Event!!

{{ $club->club_name }} added a new event. Check it out,

@component('mail::button', ['url' => ''])
Button Text
@endcomponent

Thanks,<br>
NSU Clubs
@endcomponent
