<!DOCTYPE html>
<html lang="en">
<head>
  
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <!-- ================ start footer Area ================= -->
    <!--FONT AWESOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ asset('css/layoutstyle.css') }}">
  
</head>


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
            <li><a href="#">Home</a></li>
            <li><a href="#">Clubs</a></li>
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

  @yield('content')


    <!-- ================ start footer Area ================= -->
    <footer>
  
  <div class="footer">
    <div class="container">
      <div class="row">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
        <a href="#"><i class="fa fa-youtube"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
      </div>
      
   
  
    <div class="row">
      <ul>
        <li><a href="#">Contact us</a></li>
        <li><a href="#">Our Services</a></li>
        <li><a href="#">Privacy Policy</a></li>
        <li><a href="#">Terms & Conditions</a></li>
       
      </ul>
    </div>
  
      <div class="row">
        TESLA Copyright © 2021 TESLA - All rights reserved
      </div>
  </div>
  </div>
  </footer>

  
  <!-- ================ End footer Area ================= -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

 
</html>
