


  <!-- ================ Start Header Area ================= -->
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

  @yield('content')


    <!-- ================ start footer Area ================= -->
  <footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Quick Links</h4>
					<ul>
            <li><a href="#">Home</a></li>
						<li><a href="#">Clubs</a></li>
						<li><a href="#">Events</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
  <!-- ================ End footer Area ================= -->

