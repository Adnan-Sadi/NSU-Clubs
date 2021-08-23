<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Clubs;

class newEventMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    protected $club;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($club_id)
    {
        $this->club = Clubs::find($club_id);
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.eventMail')->with('club',$this->club);
    }
}
