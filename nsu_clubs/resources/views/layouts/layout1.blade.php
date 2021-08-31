
<head>
  
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700" rel="stylesheet" />
   

    <!--FONT AWESOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ asset('css/layoutstyle.css') }}">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
  
</head>

<!-- ================ start header Area ================= -->
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
            <li><a href="{{ url('/#events') }}">Events</a></li>

            <!--  login/logout button -->
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
        NSU CLUBS Copyright © 2021 NSU CLUBS - All rights reserved
      </div>
  </div>
  </div>
  </footer>

  
  <!-- ================ End footer Area ================= -->


 

