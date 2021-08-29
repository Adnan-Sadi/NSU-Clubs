<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>EVENT</title>
		<!-- Favicon -->
		<link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico"/>
		<link rel="shortcut icon" href="{{ asset('images/Home/mortarboard.png') }}"/>
		<!-- Font Awesome -->
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		
	
		<!-- Main Style -->
		<link href="{{ asset('css/editEventStyles.css') }}" rel="stylesheet">
	
		<!-- Fonts -->
	
		<!-- Open Sans for body font -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,800" rel="stylesheet">
		<!-- Montserrat for title -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	 
 

  </head>
  <body>
  	
  <!--Form Start-->
    <form action="/event/{{ $event->event_id }}" method="POST" enctype="multipart/form-data"> 
     @csrf
     @method('PUT')
	<!-- Start Content -->
	<div id="mu-hero" role="banner" style="background-image: url('{{ asset('images/Event Covers/' . $event->cover_photo) }}');" > 
	
		<div class="mu-hero-overlay">
			<div class="container">
				<div class="mu-hero-area">
					<div class="mu-hero-featured-area">
						<div class="mu-logo-area">         
                            <a class="mu-logo" href="#">
								{{ $event->clubs->club_initial }}
							</a>     
						</div>
						<div class="mu-hero-featured-content">
							<div class="form-group">
                              <label for="exampleFormControlSelect1" class="text-white"><strong>Event Title</strong></label>
                              <input class="form-control" id="event_name" name="event_name" type="text" value="{{ $event->event_name }}">     
                            </div>

                            <div class="form-group">
                                <label for="exampleFormControlSelect1" class="text-white"><strong>Event Date</strong></label>
                                <input type="date" name="event_date" value="{{ $event->event_date->format('Y-m-d') }}">
                            </div>

							<div class="mu-event-date-line">
								<p style="margin-left: -140px;">Background Image</p>
                                <p style="margin-left: -35px;">Preferred Resolution > 2200x950</p>
								<input type="file" name="cover_photo" class="form-control-file" id="exampleFormControlFile1">
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
	<!-- Start Content -->

		<!-- Start About -->
		<section id="mu-about">
			<div class="container">
                 
				<!-- View Errors if any-->
				@if ($errors->any())
					<div class="alert alert-danger alert-block">
					<strong>Error:</strong><br>
					<button type="button" class="close" data-dismiss="alert">×</button>
					
					@foreach ($errors->all() as $error)
						<span>{{$error}}</span><br>
					@endforeach
					</div>
				@endif
				<!-- View Errors if any--> 
				
				<div class="row">
					<div class="col-md-12">
						<div class="mu-about-area">
						
							<div class="row">
								<div class="col-md-6">
									<div class="mu-about-left">

                                        @if ($event->about_image != null)
                                            <img class="" src="{{ asset('images/Event Photos/' . $event->about_image) }}" >
                                        @else
                                            <img class="" src="{{ asset('images/Event Template/about.jpg') }}">
                                        @endif
										
                                        <input type="file" name="about_image" class="form-control-file" id="exampleFormControlFile1">
									</div>
								</div>
								<div class="col-md-6">
									<div class="mu-about-right">
                                        
										<h2>About The Event</h2>
                                        
                                        
										<p>
                                            <textarea class="form-control" name="description" id="exampleFormControlTextarea1" placeholder="" rows="5">{{ $event->event_description }}</textarea>
                                        </p>
									
									</div>
								</div>
							</div>
						

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End About -->
		

		<!-- Start Parallex -->
		<section id="mu-video" style="background-image: url('{{ asset('images/Event Covers/' . $event->cover_photo) }}');">
			
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-video-area">
							
							<p class="mu-video-play-btn">Join us Today !</p>
					
						</div>
					</div>
				</div>
			</div>
		

		</section>
		
		<!-- End Parallex -->

		<!-- Start Image Slider  -->
		<section id="mu-schedule">
			<div class="container text-center">
				<h1 class="title">Add Images</h1>
				
				<hr>
				<div class="container">
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
				
				<div class="field" align="left">
				<button class="removeButton"type="button">Remove all</button>	
				<label for="file-upload" class="custom-file-upload">
					<i class="fa fa-cloud-upload"></i> Image Upload
				</label>
				<input type="file" class="uploadF" id="files" name="photos[]" multiple />
				
				</div>
						
				</div>		
			</div>		
				
			
		</section>
		<!-- End Image Slider  -->

		
        <div class=submitButton>  
                <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        

    </form>
	</main>
	
     <!-- jQuery library Bootstrap -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="{{ asset('js/editEventScript.js') }}"></script>

	
	
    
  </body>
</html>