@extends(($manages == 1) ? 'layouts.adminDataTable' : 'layouts.generalDataTable')

@section('content')

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Members</title>
    <link rel="shortcut icon" href="{{ asset('images/Home/mortarboard.png') }}"/>
    <!-- csrf-token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" href="{{ asset('css/layoutstyle.css') }}"> 
    <link rel="stylesheet" href="{{ asset('css/membersStyles.css') }}">
     

  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>

  <script src="https://use.fontawesome.com/da97f63bbd.js"></script>

  <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script> 
  <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
</head>
<body>

<header class="default-header">
  <nav class="navbar navbar-expand-lg  navbar-light">
    <div class="container">
      <a class="navbar-brand" href="index.html">
      <img src="{{ asset('images/Home/LogoMakr-0U2Aqa.png') }}" height="30" alt="" />
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="lnr lnr-menu"></span>
      </button>

        <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li><a href="{{ url('/') }}">Home</a></li>
            <li><a href="{{ url('/#clubs') }}">Clubs</a></li>
            <li><a href="#">Events</a></li>

         

             
            @if (Auth::user())
                  <li class="dropdown show profileDropdown">
                    <a id="navbarDropdown" class="dropdown-toggle text-white" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      {{ Auth::user()->name }}
                    </a>

                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                      <a class="dropdown-item" href="/profile">Profile</a>
                      <a class="dropdown-item" href="{{ route('logout') }}"
                            onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">Logout</a>

                      <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                          @csrf
                      </form>      
                      
                    </div>
                  </li>  
              @else
                <li><a href="/login">Login</a></li>
              @endif


          </ul>
        </div>
      </div>
    </nav>

  </header>
  <!-- ================ End Header Area ================= -->

  <!-- Members list Section -->
  <div class="container">
    <section style="padding-top: 60px; padding-bottom:60px;">
<div id="all_mem" class="text-left">Executive Members</div><br/>

<!-- Add executive member Button -->

  <!-- Add Executive member Button -->
  @if ($manages == 1)
    <div align="right">
    <button type="button" data-toggle="modal" data-target="#exampleModalScrollable" class="btn btn-dark btn-sm" id="create_exec_member">Add Member</button>
    </div><br>
  @endif
<!-- Executive Member Body Starts-->



    <div class="row team-row">

      @foreach ($executives as $executive)

        <!-- Start team member -->
        <div class="col-md-4 col-sm-6 team-wrap">
            <div class="team-member text-center">
              <div class="team-img">
                <img class= "photo" src="{{ asset('images/Executive Members/'.$executive->photo) }}" alt="">
                
                @if ($manages == 1)
                <div class="overlay-body">
                  <div class="team-details text-center">
                    <p>
                      Update Info
                    </p>
                    <div class="socials mt-20">      
                      <button type="button" data-toggle="modal" data-target="#exampleModalScrollable" class="btn btn-outline-dark btn-sm ex_edit" id={{ $executive->m_id }}><i class="fa fa-edit"></i></button>    
                    </div>
                  </div>
                </div>
                @endif

              </div>
              <h6 class="team-title">{{ $executive->name }}<br></h6>
              <p class="profession">{{ $executive->position }}</p>
            </div><br><br>
          </div>
          <!-- end team member -->
        
      @endforeach

    </div>


<!-- Executive Member Body End -->



<!-- Add Executive Modal Start-->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
        <div class="modal-header bg-dark text-white">
            <h5 class="modal-title" id="exampleModalScrollableTitle">Executive Member</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">

           <span id="form_result_2"></span>

          <form method="post" id="exec_member_form" class="form-horizontal" enctype="multipart/form-data">
                    
                    <div class="form-group">
                      <label class="control-label col-md-4" >Name : </label>
                      <div class="col-md-8">
                      <input type="text" name="ex_name" id="ex_name" class="form-control" />
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-4">NSU Id : </label>
                      <div class="col-md-8">
                      <input type="text" name="ex_nsu_id" id="ex_nsu_id" class="form-control" />
                      </div>
                    </div>

                    <div class="form-group">

                      <div class="input-group mb-3 col-md-12">
                            <div class="input-group-prepend">
                              <label class="input-group-text" >Department</label>
                            </div>
                          <select class="custom-select" name="ex_dept_id" id="ex_dept_id">
                            
                            @foreach ($departments as $department )
                              <option value="{{ $department->dept_id }}">{{ $department->dept_name }}</option>
                            @endforeach
                          
                           </select>
                      </div>
                        
                    </div>

                    <div class="form-group">
                      <label class="control-label col-md-4">Email : </label>
                      <div class="col-md-8">
                      <input type="text" name="ex_email" id="ex_email" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Phone Number : </label>
                      <div class="col-md-8">
                      <input type="text" name="ex_phone_num" id="ex_phone_num" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Position : </label>
                      <div class="col-md-8">
                      <input type="text" name="ex_position" id="ex_position" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Join Date </label>
                      <div class="col-md-8">
                      <input type="date" name="ex_join_date" id="ex_join_date" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Photo Upload</label>
                      <div class="col-md-8">
                      <input type="file" name="ex_photo"  id="ex_photo" class="form-control form-control-sm"/>  
                      </div>
                    </div>
                    <br>

                    <div class="form-group" align="center">
                          <input type="hidden"  name="ex_club_id" value="{{ $club_id }}">
                          <input type="hidden" name="ex_action" id="ex_action" value="Add" />
                          <input type="hidden" name="ex_hidden_id" id="ex_hidden_id" />
                          <input type="hidden" name="uploaded_image" id="uploaded_image" />
                          <input type="submit" name="ex_action_button" id="ex_action_button" class="btn btn-warning" value="Add" />
                    </div>
                  </form>
                

          </div>
        </div>
      </div>
    </div>

<!--Add Executive Modal End-->


     <div id="all_mem" class="text-left">All Members</div><br/>

      <!-- Add member Button -->
      @if ($manages == 1)

        <div align="right">
        <button type="button" name="create_member" id="create_member" class="btn btn-success btn-sm">Add Member</button>
        </div><br>

      @endif
      

     <!-- Add Member Modal Starts --> 
          <div id="formModal" class="modal fade" role="dialog">
          <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header bg-dark text-white">
                    
                    <h4 class="modal-title">Add New Member</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <div class="modal-body">
                  <!-- form validation message -->  
                  <span id="form_result"></span>

                  <form method="post" id="member_form" class="form-horizontal">
                    @csrf
                    <div class="form-group">
                      <label class="control-label col-md-4" >Name : </label>
                      <div class="col-md-8">
                      <input type="text" name="name" id="name" class="form-control" />
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-4">NSU Id : </label>
                      <div class="col-md-8">
                      <input type="text" name="nsu_id" id="nsu_id" class="form-control" />
                      </div>
                    </div>

                    <div class="form-group">

                      <div class="input-group mb-3 col-md-12">
                            <div class="input-group-prepend">
                              <label class="input-group-text" >Department</label>
                            </div>
                          <select class="custom-select" name="dept_id" id="dept_id">
                            
                            @foreach ($departments as $department )
                              <option value="{{ $department->dept_id }}">{{ $department->dept_name }}</option>
                            @endforeach
                          
                           </select>
                      </div>
                        
                    </div>

                    <div class="form-group">
                      <label class="control-label col-md-4">Email : </label>
                      <div class="col-md-8">
                      <input type="text" name="email" id="email" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Phone Number : </label>
                      <div class="col-md-8">
                      <input type="text" name="phone_num" id="phone_num" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Position : </label>
                      <div class="col-md-8">
                      <input type="text" name="position" id="position" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Join Date </label>
                      <div class="col-md-8">
                      <input type="date" name="join_date" id="join_date" class="form-control" />
                      </div>
                    </div><br>

                    <div class="form-group" align="center">
                          <input type="hidden"  name="club_id" value="{{ $club_id }}">
                          <input type="hidden" name="action" id="action" value="Add" />
                          <input type="hidden" name="hidden_id" id="hidden_id" />
                          <input type="submit" name="action_button" id="action_button" class="btn btn-warning" value="Add" />
                    </div>
                  </form>
                  </div>
              </div>
              </div>
          </div>
     <!-- Add Member Modal Ends -->
     
     <!-- Confirm Delete Modal Starts --> 
     <div id="confirmModal" class="modal fade" role="dialog">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header">                    
                      <h2 class="modal-title">Confirmation</h2>
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <div class="modal-body">
                      <h4 align="center" style="margin:0;">Are you sure you want to remove this member?</h4>
                  </div>
                  <div class="modal-footer">
                    
                  <button type="button" name="ok_button" id="ok_button" class="btn btn-danger">OK</button>
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                  </div>
              </div>
          </div>
      </div>
      <!-- Confirm Delete Modal Ends --> 
      
@endsection

