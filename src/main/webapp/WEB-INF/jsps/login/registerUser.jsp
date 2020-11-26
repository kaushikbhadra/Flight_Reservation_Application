<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="registerUser.css" rel="stylesheet">
<title>Register User</title>
</head>
<body >
	<div class="container">
		<h2>User Registration</h2>
		<form action="registerUser" method="POST" class="form-register">



			<div class="form-group">
				First Name: <input type="text" name="firstName" class="form-control" />
			</div>
			<div class="form-group">
				Last Name: <input type="text" name="lastName" class="form-control" />
			</div>
			<div class="form-group">
				Email: <input type="text" name="email" class="form-control" />
			</div>
			<div class="form-group">
				Password: <input type="password" name="password"
					class="form-control" />
			</div>
			<div class="form-group">
				Confirm Password:<input type="password" name="confirmPassword"
					class="form-control" />
			</div>
			<div class="clearfix">
				<input type="submit" value="Register"
					class="btn btn-lg btn-primary  float-left" />
				<a href="alreadyRegister" class="btn btn-lg btn-secondary float-right">Already
				Register</a>
			</div>
		</form>
		
	</div>
	<script src="webjars/jquery/jquery.min.js"></script>
	<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>