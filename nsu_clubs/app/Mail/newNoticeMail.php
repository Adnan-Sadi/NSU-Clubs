<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Clubs;
use App\Models\Notices;

class newNoticeMail extends Mailable
{
    use Queueable, SerializesModels;

    protected $club,$notice;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($club_id,$notice_id)
    {
        $this->club = Clubs::find($club_id);
        $this->notice = Notices::find($notice_id);
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.noticeMail')->with('club',$this->club)->with('notice',$this->notice);
    }
}
