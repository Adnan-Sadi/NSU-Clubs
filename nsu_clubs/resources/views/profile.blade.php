
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts Google -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="{{ asset('images/Home/mortarboard.png') }}"/>

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="{{ asset('css/profileStyles.css') }}">



    <title>Profile</title>
  </head>

  <body>
  @extends('layouts.layout1')
  @section('content')

  <div class="container">
        <div class="main-body">

              <!--Image Uploaded here -->
              <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex flex-column align-items-center text-center">

                        <!-- Checking if the user has a profile picture -->
                        @if ($user->prof_image != null)
                          <img class="profilePicture" src="{{ asset('images/Profile Pictures/'. $user->prof_image) }}" alt="Admin">
                        @else
                          <img class="profilePicture" src="{{ asset('images/Profile Pictures/dummy-image2.png') }}" alt="Admin">
                        @endif
                        <!-- Checking if the user has a profile picture -->

                        <div class="mt-3">
                          <h4>{{ $user->name }}</h4>

                         
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalDiscount">Change picture</button>
                          
                         <!-- Show errors during image upload if any -->
                          @if ($errors->image_error->any())
                            <div class="alert alert-danger alert-block">
                              <strong>Error:</strong><br>
                              <button type="button" class="close" data-dismiss="alert">×</button>
                              
                              @foreach ($errors->image_error->all() as $error)
                                <span>{{$error}}</span><br>
                              @endforeach
                            </div>
                          @endif
                          <!-- Show errors during image upload if any -->  
                         
                        <form action="/profile/{{ $user->id }}/update_image" method="POST" enctype="multipart/form-data">
                          @csrf
                          @method('PUT') 

                           <!--CHANGE PROFILE PICTURE MODAL START-->
                          <div class="modal fade right" id="modalDiscount" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                            aria-hidden="true" data-backdrop="true">
                            <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-danger" role="document">

                              <div class="modal-content">                        

                                <div class="modal-header">
                                  <h4 class="heading">
                                    Upload picture
                                  </h4>

                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true" class="white-text">&times;</span>
                                  </button>
                                </div>

                                <div class="modal-body">

                                      <div class="uploadOuter">
                                          <label for="uploadFile" class="btn btn-dark">Upload Image</label>
                                          <p>OR</p>
                                        <span class="dragBox" >
                                          Darg and Drop image here
                                        <input type="file" onChange="dragNdrop(event)"  ondragover="drag()" ondrop="drop()" id="uploadFile" name="prof_image" />
                                        </span>
                                        </div>
                                        <div id="preview"></div>
                                </div>

                                <!--Footer-->
                                <div class="modal-footer flex-center">
                                   <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Close</button>
                                   <button type="submit" class="btn btn-dark">Save changes</button>
                                </div>
                            
                              </div>
                              <!--/.Content-->
                            </div>
                          </div>
                           <!--CHANGE PROFILE PICTURE MODAL END-->
                        </form>  
 
                        
                        
                        </div>
                      </div>
                    </div>
                  </div>
                </div> 
            
                <!-- ================ USER INFO SECTION STARTS ================= -->
                <div class="col-md-8">
                  <div class="card mb-2">
                    <div class="card-body">
                      <h3 style="opacity:0;">Hello</h1>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">NSU ID</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          {{ $user->nsu_id }}
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Full Name</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          {{ $user->name }}
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Email</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          {{ $user->email }}
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Phone</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          {{ $user->phone_num }}
                        </div>
                      </div>


                      <hr>
                      <div class="row">
                        <div class="col-sm-12">
                            
                            

                              <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#modalCart">Edit</button>

                              <!-- Show errors during user info update if any -->
                              @if ($errors->desc_error->any())
                                <div class="alert alert-danger alert-block">
                                  <strong>Error:</strong><br>
                                  <button type="button" class="close" data-dismiss="alert">×</button>
                                  
                                  @foreach ($errors->desc_error->all() as $error)
                                    <span>{{$error}}</span><br>
                                  @endforeach
                                </div>
                              @endif
                              <!-- Show errors during user info update if any -->  

                               <!--   EDIT USER INFO MODAL START-->
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

                                      <form action="/profile/{{ $user->id }}" method="POST">
                                        @csrf
                                        @method('PUT')

                                            <div class="form-group">
                                             <label for="exampleFormControlSelect1">NSU ID</label>
                                             <input class="form-control" type="text" name="nsu_id" value="{{ $user->nsu_id }}">
                                           </div>
                                           <div class="form-group">
                                             <label for="exampleFormControlSelect1">Full Name</label>
                                             <input class="form-control" type="text" name="name" value="{{ $user->name }}">
                                           </div>
                                           
                                           <div class="form-group">
                                             <label for="exampleFormControlSelect1">Phone</label>
                                             <input class="form-control" type="text" name="phone_num" value="{{ $user->phone_num }}">
                                           </div>


                                    </div>
                                    <!--Footer-->
                                    <div class="modal-footer">
                                      <button class="btn btn-outline-dark" data-dismiss="modal">Close</button>
                                      <button class="btn btn-dark" type="submit">Submit</button>
                                    </div>
                                    </form>
                                  </div>
                                </div>
                              </div>
                             <!--   EDIT USER INFO MODAL START-->
                         
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- ================ USER INFO SECTION ENDS ================= -->

                  <div class="row gutters-sm">

                    <!-- ================ Events Following SECTION STARTS ================= -->
                    <div class="col-sm-6 mb-3">
                      <div class="card h-100">
                        <div class="card-body">
                          <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Events Following</i></h6>

                          <!-- Getting the events following by user -->
                          @foreach ($events_followed as $event_followed)

                              <div class="media">
                                <img height=64 width=100 src="{{ asset('images/Event Covers/' . $event_followed->cover_photo) }}" class="mr-3" alt="...">
                                <div class="media-body">
                                  <h5 class="mt-0">{{ $event_followed->event_name }}</h5>
                                  <p>
                                  <a href="{{ url('event/' . $event_followed->event_id) }}">View more</a>
                                  </p>
                                </div>
                              </div>
                            
                          @endforeach                          
                          <!-- Getting the events following by user -->

                        </div>
                      </div>
                    </div>
                    <!-- ================ Events Following SECTION ENDS ================= -->

                    <!-- ================ Clubs Following SECTION STARTS ================= -->
                    <div class="col-sm-6 mb-3">
                      <div class="card h-100">
                        <div class="card-body">
                          <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Clubs Following</i></h6>

                           <!-- Getting the clubs following by user  -->
                           @foreach ($clubs_followed as $club_followed )

                              <div class="media">
                                <img height=64 width=64 src="{{ asset('images/Club Logos/' . $club_followed->logo) }}" class="mr-3" alt="...">
                                <div class="media-body">
                                  <h5 class="mt-0">{{ $club_followed->club_name }}</h5>
                                  <p>
                                  <a href="{{ url('/home/'. $club_followed->club_id ) }}">View more</a>
                                  </p>
                                </div>
                              </div>
                             
                           @endforeach                          
                          <!-- Getting the clubss following by user -->

                        </div>
                      </div>
                    </div>
                    <!-- ================ Clubs Following SECTION ENDS ================= -->
                  </div>

            </div>
        </div>
  @endsection
  </body>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="{{ asset('js/profileScript.js') }}"></script>

</html>
