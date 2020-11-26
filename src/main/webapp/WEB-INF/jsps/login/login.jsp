<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="login.css" rel="stylesheet">
<title>User Login</title>
</head>
<body class="text-center">
	<div class="container">
		<h2>Login</h2>
		<form action="login" method="POST" class="form-login">

			<div class="form-group">
				User Name: <input type="text" name="email" class="form-control" />
			</div>
			<div class="form-group">
				Password: <input type="password" name="password"
					class="form-control" />
			</div>
			<input type="submit" value="login"
				class="btn btn-lg btn-primary btn-block" /> ${msg}

		</form>
	</div>
	<script src="webjars/jquery/jquery.min.js"></script>
	<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>