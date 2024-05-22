<!DOCTYPE html>
<html>
<head>
	<title>Barangay| Login</title>
	<link rel="stylesheet" type="text/css" href="{{url ('public/backend_auth/loginpage.css')}}">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="{{ url ('public/backend_auth/img/wave.png')}}">
	<div class="container">
		<div class="img">
			<img src="{{ url ('public/backend_auth/img/bg.svg')}}">
		</div>
		<div class="login-content">

            @include('messages')

			<form action="{{ url ('login')}}" method="post">

             {{ csrf_field() }}

				<img src="{{ url ('public/backend_auth/img/avatar.svg')}}">
				<h2 class="title">Welcome to Barangay Name</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="email" name="email" value="{{old ('email')}}" id="form2Example11" class="input">
                        <span style= "color: red;">{{ $errors->first('email')}}</span>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>New Password</h5>
                        <input type="password" name="new_password" id="form2Example22" class="form-control "required />
            	   </div>
            	</div>
            	<a href="{{url ('login')}}">Login</a>
            	<input type="submit" class="btn" value="Login">
            </form>

        </div>
    </div>
    <script type="text/javascript" src="{{url ('public/backend_auth/loginpage.js')}}"></script>
</body>
</html>