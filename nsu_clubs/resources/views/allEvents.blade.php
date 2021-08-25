<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale = 1">
    <title>Events</title>

     <!-- Required meta tags -->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <script src="https://kit.fontawesome.com/8aa2fd0685.js" crossorigin="anonymous"></script>
     
     <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
      <!-- FONTAWESOME -->
    <script src="https://kit.fontawesome.com/8aa2fd0685.js" crossorigin="anonymous"></script>
    
    <link href="{{ asset('css/allEventStyles.css') }}" type="text/css" rel="stylesheet">
    </head>

   <body>
     
       <div class="container">
        <div class="page-header" style="border: none;position: relative;">
          <h1>Calendar of Events</h1>
          
          @if ($manages == 1)
            <div class="button-container-1">
                <span class="mas">Organize Event</span>
                <button id='work' type="button" name="Hover" data-toggle="modal" data-target="#modalCart">Organize Event</button>
            </div>
          @endif
          
              <!-- Modal: modalCart -->
              <div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
              aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <!--Header-->
                  <div class="modal-header">

                    
                    <h4 class="modal-title" id="myModalLabel">Edit Information</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">×</span>
                    </button>
                  </div>
                  <!--Body-->
                  <div class="modal-body">
                    
                    <!-- Create New Event Form -->
                    <form action="/event" method="POST" enctype="multipart/form-data">
                     @csrf
                            <div class="form-group">
                                <label for="exampleFormControlSelect1"><strong>Event Title</strong></label>
                                <input class="form-control" type="text" name="title">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1"><strong>Event Description</strong></label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" type="text" name="description"></textarea>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleFormControlSelect1"><strong>Date</strong></label>
                                <input type="date" name="event_date">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1"><strong>From</strong></label>
                                <input type="time"  name="start_at">
                                <label for="exampleFormControlSelect1"><strong>To</strong></label>
                                <input type="time"  name="end_at">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlFile1"><strong>Event Photo</strong></label>
                                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="cover_photo">
                            </div>
                      </div>

                       <input type="hidden"  name="club_id" value="{{ $club->id }}">
                        <!--Footer-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-info" data-dismiss="modal">Close</button>
                            <button class="btn btn-info" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
              </div>
            </div>
            <!-- Modal: modalCart -->

        
        
        </div>
        <!-- TIMELINE -->
        
        <div id="2020" class="spacer-toc"><i class="fa fa-calendar"></i></div>
        <h2 class="border-line">2021</h2>
        
        <!-- 2020 -->
        
        <div class="eventWrapper">
      
          @forelse ($club->events as $event)

          @if ($event->club_id == $club->id)

           <div class="event">

            <div class="event--img">
              <a href="{{ asset('images/Event Covers/' . $event->cover_photo) }}" onclick="if (!lightboxLoaded) return false" class="w-fancybox">
                <img src="{{ asset('images/Event Covers/' . $event->cover_photo) }}" title="abc" alt="abc">
              </a>
            </div>
            <div class="event--date">
              <span>{{ $event->event_date->format('F') }}</span>
              <span>{{ $event->event_date->format('d') }}</span>
              <span>{{ $event->event_date->format('Y') }}</span>
              <span>{{ $club->club_initial }}</span>
            </div>

            <div class="event--content">

              <h2>
                <a href="{{ url('event/'.$event->event_id) }}" >{{ $event->event_name }}</a>
              </h2>

              <p class="event--content-hall">North-South University</p>

              <div class="event--content-info">
                <div>
                  <time>{{ $event->start_at }} - {{ $event->end_at }}</time>
                </div>
              </div>
                <!--{{ Str::limit($event->event_description, 150, '...') }}  -->
              <div class="event--content-ensemble">
                <!-- Limiting the size of description -->  
                {{ Str::limit($event->event_description, 150, '...') }}
            </div>
              <!-- csrf-token -->
              <meta name="csrf-token" content="{{ csrf_token() }}">
              
              @if (Auth::user())
                
                  <div class="event--content-social">

                    @php
                        $following = false;//if $following = true then user is following the event
                    @endphp
                                        
                    @foreach ($follows as $follow)
                      @if ( $event->event_id == $follow->event_id)
                        @php       $following = true;       @endphp
                      @endif
                    @endforeach
                    
                     <!-- Follow Event Button -->
                      @if ($following == true)
                       <button type="button" class="btn btn-outline-danger btn-sm unfollow_event" id="follow_event_{{ $event->event_id }}" data="{{ $event->event_id }}"><i class="fas fa-times-circle"></i> Follow</button><br>
                      @else
                        <button type="button" class="btn btn-outline-success btn-sm follow_event" id="follow_event_{{ $event->event_id }}" data="{{ $event->event_id }}"><i class="fas fa-check-circle"></i> Follow</button><br>
                      @endif
                    
                    
                    @if ($manages == 1)
                       <!-- Edit Event Button -->
                       <button type="button" class="btn btn-outline-info btn-sm edit_event" id="{{ $event->event_id }}" onclick="location.href='/event/{{ $event->event_id }}/edit';">
                       <span class="btn-label"><i class="fas fa-edit"></i> Edit</button><br>
                        
                        <!-- Delete Event Button -->
                        <form id="form-1" action="/event/{{ $event->event_id }}" method="POST">
                            @csrf
                            @method('delete')
                            <button type="submit" class="btn btn-outline-dark btn-sm"><i class="far fa-trash-alt"></i> Delete</button>
                        </form>
                      
                    @endif
                    
                  
                  </div>
              @else
                
              @endif
              
            </div>

           </div>
         @endif
              
        @empty
        <p>No Events found</p>
              
        @endforelse


        </div><!-- end eventWrapper  -->
        
        
        
        <div class="wsite-spacer" style="height:4rem;"></div>
          
        </div><!-- container -->


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="{{ asset('js/allEventScript.js') }}"></script>
  
    </body>

   
   
</html>