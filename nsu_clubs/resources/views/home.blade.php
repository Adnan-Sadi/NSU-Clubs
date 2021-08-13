<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
  <!-- Mobile Specific Meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="{{ asset('images/Home/LogoMakr-6zsSCl.png') }}"/>
  <!-- Author Meta -->
  <meta name="author" content="colorlib" />
  <!-- Meta Description -->
  <meta name="description" content="" />
  <!-- Data Asos-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <!-- Meta Keyword -->
  <meta name="keywords" content="" />
  <!-- meta character set -->
  <meta charset="UTF-8" />
  <!-- Site Title -->
  <title>NSU CLUBS</title>

  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700" rel="stylesheet" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
  <link rel="stylesheet" href="{{ asset('css/HomeStyles.css') }}" />
</head>

<body>

@extends('layouts.layout')
 
@section('content')

  <!-- ================ start banner Area ================= -->
  <section class="home-banner-area">
    <div class="container">
      <div class="row justify-content-center fullscreen align-items-center">
        <div class="col-lg-5 col-md-8 home-banner-left">
          <h1 class="text-white home-font">
            Take the first step <br />
            with NSU CLUBS
          </h1>
          <p class="mx-auto text-white  mt-20 mb-40">
            In the history of modern astronomy, there is probably no one
            greater leap forward than the building and launch of the space
            telescope known as the Hubble.
          </p>
        </div>
        <div class="offset-lg-2 col-lg-5 col-md-12 home-banner-right">
          <img src="{{ asset('images/Home/circles.svg') }}" height="450" alt="" />
        </div>
      </div>
    </div>
  </section>
  <!-- ================ End banner Area ================= -->

  <!-- ================ Start Feature Area ================= -->
  <!--
  <section class="feature-area">
    <div class="container-fluid">
      <div class="feature-inner row">
        <div class="col-lg-2 col-md-6">
          <div class="feature-item d-flex">
            <i class="ti-book"></i>
            <div class="ml-20">
              <h4>New Classes</h4>
              <p>
                In the history of modern astronomy, there is probably no one greater leap forward.
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-2 col-md-6">
          <div class="feature-item d-flex">
            <i class="ti-cup"></i>
            <div class="ml-20">
              <h4>Top Courses</h4>
              <p>
                In the history of modern astronomy, there is probably no one greater leap forward.
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-2 col-md-6">
          <div class="feature-item d-flex border-right-0">
            <i class="ti-desktop"></i>
            <div class="ml-20">
              <h4>Full E-Books</h4>
              <p>
                In the history of modern astronomy, there is probably no one greater leap forward.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
-->
  <!-- ================ End Feature Area ================= -->

  <!-- ================ Start Clubs Area ================= -->
  <section class="other-feature-area">
    <div class="container">
      <div class="feature-inner row">
        <div class="col-lg-12">
          <div class="section-title text-left">
            <h2 class="home-font">
              Meet the Clubs<br />
              of North-South University 
            </h2>
          </div>
        </div>
        
        @foreach ( $clubs as $club )

        <div class="col-lg-4 col-md-6" data-aos="zoom-in-right">
          <div class="other-feature-item">
            <div class="flip-card" tabIndex="0">
              <div class="flip-card-inner">
                <div class="flip-card-front">
                  <img src="{{ asset('images/Club Logos/' . $club->logo)}}" height="300" width="300">
                </div>
                <div class="flip-card-back">
                  <div class="inner color-white">
                    <h3 class="flip-box-header home-font">{{ $club->club_name }}</h3>

                    <div class="backheader">
                      {{ $club->Description }}
                    </div>
                    
                    <button class="flip-box-button" onclick="location.href='/home/{{ $club->id }}';">Learn More</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
            
        @endforeach

            
     
      </div>
    </div>
  </section>
  <!-- ================ End Testimonials Area ================= -->

  <section class="popular-course-area section-gap">
    
    <!-- PARALLEX -->
    <section class="parallexContainer">

     <section class="parallax-2">
         <div class="parallax-inner">
             <br>
             <h1 class="Parallex-Container-Text home-font" style="opacity: 0;">CLUBS</h1>
             <br>
         </div>
     </section>
    
   </section>
    
     

   </div>

 </section>
  <!-- ================ Start Blog Post Area ================= -->
  <section class="blog-post-area section-gap">
    <div class="container-fluid">
      <div class="feature-inner row">
        <div class="col-lg-12">
          <div class="section-title text-left">
            <h2 class="home-font">
              Recent Events   
            </h2>
            <p>
              There is a moment in the life of any aspiring astronomer that it is time to buy that first telescope.
              It’s exciting to think about setting up your own viewing station.
            </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="single-blog-post">
            <img src="{{ asset('images/Home/blog-post/b1.jpg') }}" class="img-fluid" alt="" />
            <div class="overlay"></div>
            <div class="top-text">
              <p>29th, oct, 2018</p>
              <p>121 likes</p>
              <p>05 comments</p>
            </div>
            <div class="text">
              <h4 class="text-white home-font">Smart Kitchen Setup</h4> 
              <div>
                <p>
                  Lorem ipsum dolor sit amet consec tetur adipisicing elit,
                  sed do.
                </p>
              </div>
              <a href="#" class="primary-btn">
                View Details
                <i class="fa fa-long-arrow-right"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mt--160">
          <div class="single-blog-post">
            <img src="{{ asset('images/Home/blog-post/b2.jpg') }}" class="img-fluid" alt="" />
            <div class="overlay"></div>
            <div class="top-text">
              <p>29th, oct, 2018</p>
              <p>121 likes</p>
              <p>05 comments</p>
            </div>
            <div class="text">
              <h4 class="text-white home-font">Smart Kitchen Setup</h4>
              <div>
                <p>
                  Lorem ipsum dolor sit amet consec tetur adipisicing elit,
                  sed do.
                </p>
              </div>
              <a href="#" class="primary-btn">
                View Details
                <i class="fa fa-long-arrow-right"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mt--260">
          <div class="single-blog-post">
            <img src="{{ asset('images/Home/blog-post/b3.jpg') }}" class="img-fluid" alt="" />
            <div class="overlay"></div>
            <div class="top-text">
              <p>29th, oct, 2018</p>
              <p>121 likes</p>
              <p>05 comments</p>
            </div>
            <div class="text">
              <h4 class="text-white home-font">Smart Kitchen Setup</h4>
              <div>
                <p>
                  Lorem ipsum dolor sit amet consec tetur adipisicing elit,
                  sed do.
                </p>
              </div>
              <a href="#" class="primary-btn">
                View Details
                <i class="fa fa-long-arrow-right"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ================ End Blog Post Area ================= -->

@endsection

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script> 
  <script src="{{ asset('js/homeScript.js') }}"></script>

  <!--Data asos script -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
  <!--Data asos script -->
</body>

</html>