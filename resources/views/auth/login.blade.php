<!DOCTYPE html>
<html>
<head>
	<title>Barangay| Login</title>
	<link rel="stylesheet" type="text/css" href="{{url ('public/backend_auth/loginpage.css')}}">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<!-- <script src="https://kit.fontawesome.com/a81368914c.js"></script> -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="{{ url ('public/backend_auth/img/wave.png')}}">
	<div class="container">
		<div class="img">
			<img src="{{ url ('public/backend_auth/img/bg.svg')}}">
		</div>
    
		<div class="login-content">

           
			<form action="{{ url('login_check') }}" method="post">
                {{ csrf_field() }}
               
                <img src="{{ url('public/backend_auth/img/avatar.svg') }}">
                <h2 class="title">Welcome to Barangay Name</h2>
                <div style="color:red; margin-bottom:8px;">
                @include('messages')
                </div>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>Username</h5>
                        <input type="text" name="username" value="{{ old('username') }}" class="input">
                        <span style="color: red;">{{ $errors->first('username') }}</span>
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Password</h5>
                        <input type="password" name="password" class="input">
                        <span style="color: red;">{{ $errors->first('password') }}</span>
                    </div>
                </div>
                <a href="{{ url('forgot') }}">Forgot Password?</a>
                <input type="submit" class="btn" value="Login">
            </form>

    <script type="text/javascript" src="{{url ('public/backend_auth/loginpage.js')}}"></script>
</body>
</html>