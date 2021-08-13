<!DOCTYPE html>
<html lang="en">
	<head>
	  	<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<title>NSU CLUBS-sign up</title>
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
		<link rel="stylesheet" href="{{ asset('css/LoginStyles.css') }}">
	</head>
	<body>
		<div class="container1">
			<div class="forms-container">
				<div class="signup-signup">

					<form method="POST" action="{{ route('register') }}" class="sign-up-form">
                        @csrf
					      <h2 class="title">Sign up</h2>

                            <div class="input-field">
                            <i class="fas fa-user"></i>
                            
                            <input input id="name" type="text" class=" @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" placeholder="Name" />

                                @error('name')
                                <br> <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div><br>

                            <div class="input-field">
                            <i class="fas fa-envelope"></i>
                            
                            <input id="email" type="email" class=" @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email" />

                                @error('email')
                                <br><span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                
                            </div><br>

                            <div class="input-field">
                            <i class="fas fa-lock"></i>
                            
                            <input id="password" type="password" class=" @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Password" />
                            
                            @error('password')
                                <br><span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            
                            </div><br>

                            <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input id="password-confirm" type="password" class="" name="password_confirmation" required autocomplete="new-password" placeholder="Confirm Password" />
                            </div><br>

                            <button type="submit" class="btn">
                                {{ __('Register') }}
                            </button>
                    </form>


      					    <div class="panel right-panel">
						     	<div class="content">
						      		<h3>One of us ?</h3>
								    <p>
								       A single website for all clubs in North South University


								    </p>
									<button class="btn transparent" id="sign-up-btn"><a href="../login" class="navigate-signup-signin">Sign in</a></button>
						      		
						     	</div>
						     	
							</div>
			</div>
		</div>
	</body>
</html>