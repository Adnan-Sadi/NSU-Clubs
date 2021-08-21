<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>CLUB PAGE</title>
 
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8aa2fd0685.js" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
    <!-- Main Style -->
    <link href="{{ asset('css/clubPageStyles.css') }}" rel="stylesheet">

   
  </head>
  <body>
  	
  	<!-- Start Header -->
	<header id="mu-hero" class="" role="banner">
		<div class="mu-hero-overlay">
			<div class="container text-center">
				<div class="mu-hero-area">
			

					<!-- Start hero featured area -->
					<div class="mu-hero-featured-area">
						<!-- Start center Logo -->
						<div class="mu-logo-area">
							<!-- text based logo -->
							<div class="mu-logo">
							
								<img src="{{ asset('images/Club Logos/580b57fcd9996e24bc43c4d8.png') }}">
							


							</div>
							<!-- image based logo -->
							<!-- <a class="mu-logo" href="#"><img src="assets/images/logo.jpg" alt="logo img"></a> -->
						</div>
						<!-- End center Logo -->

						<div class="mu-hero-featured-content">
				
							<div class="mu-event-date-line">
								
								{{ $club->club_name }} -
								{{ $club->club_initial }}
								

							
	
								
								</div>
							

							<div class="mu-event-counter-area">
								<div id="mu-event-counter">
									
								</div>
							</div>

						</div>
					</div>
					<!-- End hero featured area -->

				</div>
			</div>
		</div>
	</header>
	<!-- End Header -->
	
	



		<!-- Start Schedule  -->
		<section id="mu-schedule">
			<div class="container">
                
               

				<div class="container text-center" >
					<button type="button" id="navButtons" class="btn btn-dark" onclick="location.href='/home/{{ $club->id }}/members';">Members</button>
					<button type="button" id="navButtons"class="btn btn-dark" onclick="location.href='/home/{{ $club->id }}/events';">Events</button>
                    
                    @if (Auth::user())
                        @php
                        $following = false;//if $following = true then user is following the event
                        @endphp
                        
                        @foreach ($follows as $follow)
                            @if ( $club->id == $follow->club_id)
                                @php       $following = true;       @endphp
                            @endif
                        @endforeach

                        @if ($following == true)
                        <button type="button" id="followButton" class="btn btn-outline-danger unfollow_club" id="follow_club_{{ $club->id }}" data="{{ $club->id }}"><i class="fas fa-times-circle"></i> Unfollow</button><br>
                        @else
                            <button type="button" id="followButton" class="btn btn-outline-success follow_club" id="follow_club_{{ $club->id }}" data="{{ $club->id }}"><i class="fas fa-check-circle"></i> Follow</button><br>
                        @endif
                        
                        

                    @endif
                    
				</div>
				
				<div class="row">
					<div class="colo-md-12">
						
						<div class="mu-schedule-area">
				
							<div class="mu-title-area">
						
								<h2 class="mu-title">Club Details
								<button type="button" id="editButton" class="btn btn-dark"  data-toggle="modal" data-target="#modalCart">
								<i class="fa fa-wrench" aria-hidden="true"></i> 	
								Edit</button>
								</h2>
															
								<p>
									{{ $club->Description }}
								</p>
							</div>

							<div class="container text-center">
								
								<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus" aria-hidden="true"></i> Add Notice</button>
								<!-- Button trigger modal -->		
								<hr>
								
							  </div>

							
							<div class="mu-schedule-content-area">
								<!-- Nav tabs -->
							
								
								<div class="container">
									<h1>
										NOTICES
									</h1>
									<ul class="list"></ul>
									<div class="list-footer">
										<button class="sidebtn" id="prev-page"><</button>
										<div><span id="current-page"></span> of <span id="total-pages"></span></div>
										<button class="sidebtn" id="next-page">></button>
									</div>
								</div>
							

							</div>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Schedule -->


  <!-- Modal -->
  <div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Make Changes</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	  
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Change Club Description</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
					<div class="form-group">
					<label class="form-label" for="customFile">Upload logo</label>
					<input type="file" class="form-control" id="customFile" />
					</div>
					<div class="form-group">
					<label class="form-label" for="customFile">Upload Background Image</label>
					<input type="file" class="form-control" id="customFile" />
					</div>
                 
                    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
        <form action="/club/{{ $club->id }}" method="POST">
        @csrf

		<div class="modal-body">
			<div class="form-group">
				<label for="formGroupExampleInput">Title</label>
				<input type="text" class="form-control" id="formGroupExampleInput" name="title" placeholder="Notice Title">
			  </div>
			  <div class="form-group">
				<label for="exampleFormControlTextarea1">Notice description</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" name="description" rows="3"></textarea>
			  </div>
		</div>
		<div class="modal-footer">
          <input type="hidden"  name="club_id" value="{{ $club->id }}">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="submit" class="btn btn-primary">Save changes</button>
		</div>

        </form>
	  
     </div>
	</div>
  </div>
@php
    $length = $notices->count();
@endphp

<script>

    // DOM Elements
const list = document.querySelector('.list');
const currPage = document.querySelector('#current-page');
const totalPages = document.querySelector('#total-pages');
const buttonPrev = document.querySelector('#prev-page');
const buttonNext = document.querySelector('#next-page');

const items = {!! json_encode($notices) !!};//getting the notices

const length = {{ $length }}; // number of notices
console.log(length);
console.log(items);


let currentPage = 1;
let currentIndex = 0;
const itemsPerPage = 5;

const numPages = Math.ceil(items.length / itemsPerPage);

// Functions
date = new Date('2013-03-10T02:00:00Z')

const createListItem = (item) => `<li class="list-item"><h4 class="item-title">${item.title}<a href="#"><i class="fa fa-times" style="margin-left:5px; color:red;"aria-hidden="true"></i></a><span id="demo" style="color:rgb(180, 180, 180); font-style: italic; font-size:12px; float:right;">${item.updated_at}</span></h4><p>${item.description}</p></li>`;


const nextPage = () => {
    if (currentPage === numPages) return;

    currentPage++;
    currentIndex = (currentPage - 1) * itemsPerPage;
    let newIndex = currentIndex + itemsPerPage;
    list.innerHTML = items
        .slice(currentIndex, newIndex)
        .map((item) => createListItem(item))
        .join('');
    currPage.innerHTML = currentPage;
};

const prevPage = () => {
    if (currentPage === 1) return;

    currentPage--;
    currentIndex = (currentPage - 1) * itemsPerPage;
    let newIndex = currentIndex + itemsPerPage;
    list.innerHTML = items
        .slice(currentIndex, newIndex)
        .map((item) => createListItem(item))
        .join('');
    currPage.innerHTML = currentPage;
};

const init = () => {
    currPage.innerHTML = currentPage;
    totalPages.innerHTML = numPages;

    list.innerHTML = items
        .slice(0, itemsPerPage)
        .map((item) => createListItem(item))
        .join('');
};

// Event Listeners
buttonPrev.addEventListener('click', prevPage);
buttonNext.addEventListener('click', nextPage);

init();

</script>

  

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Bootstrap -->
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="{{ asset('js/clubScript.js') }}"></script>
   

		
    
  </body>
</html>