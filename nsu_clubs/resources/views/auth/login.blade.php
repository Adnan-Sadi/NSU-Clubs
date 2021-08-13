<!DOCTYPE html>
<html lang="en">
	<head>
	  	<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<title>NSU CLUBS- log in </title>
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
		<link rel="stylesheet" href="{{ asset('css/LoginStyles.css') }}">
	</head>
	<body>
		<div class="container1">
			<div class="forms-container">
			    <div class="signin-signup">
				          <form method="POST" action="{{ route('login') }}" class="sign-in-form">
                           @csrf

					      <h2 class="title">Login</h2>
                            <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input id="email" type="email" class=" @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Email" />

                                    @error('email')
                                        <br><span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror

                            </div><br>

                            <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input id="password" type="password" class=" @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password" />

                                    @error('password')
                                    <br><span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                                    
                            </div><br>

                            <div class="">
                                <div class="">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div>
                                    <button type="submit" class="btn">
                                        {{ __('Login') }}
                                    </button><br>

                                    @if (Route::has('password.request'))
                                        <a class="btn-link" href="{{ route('password.request') }}">
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    @endif
                                </div>
                            </div>
                     </form>

                     
					       	<div class="panel left-panel">
						     	<div class="content">
						      		<h3>New here ?</h3>
						      		<p>
							       		The website reduces time and stress involved in finding the perfect club for you. Students can easily find all information about the clubs in one single website. 

							      	</p>
						      			<button class="btn transparent" id="sign-up-btn"><a href="/register" class="navigate-signup-signin">Sign up</a></button>
						     	</div>
						     
					    	</div>

				</div>
			</div>
		</div>
	</body>
</html>