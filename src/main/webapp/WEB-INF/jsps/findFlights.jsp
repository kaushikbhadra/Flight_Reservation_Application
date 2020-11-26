<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="findFlights.css" rel="stylesheet">
<title>Find Flights</title>
</head>
<body>
<div class="container">
<h2>Find Flights</h2>
<form action="findFlights" method = "POST" class="form-findFlight">
<div class=row><div class="col">
Form: <input type = "text" name = "from" class="form-control"/></div>
<div class="col">To: <input type="text" name= "to"class="form-control"/></div>
<div class="col">Departure Date: <input type ="text" name = "departureDate" placeholder="mm-dd-yyyy"class="form-control mr-3"/></div>
<div class="col display"><input type="submit" value="search" class="btn btn-success align-middle"/></div>
</div>
</form>
</div>
<script src="webjars/jquery/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>