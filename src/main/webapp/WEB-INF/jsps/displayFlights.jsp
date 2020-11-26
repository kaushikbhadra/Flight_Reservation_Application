<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="index.css" rel="stylesheet">
<title>Flights</title>
</head>
<body>
<div class="container">
<table class="table table-striped">
<tr>
<th>Airlines</th>
<th>Departure City</th>
<th>Arrival City</th>
<th>Departure Time</th>
<th>&nbsp;</th>
</tr>
<c:forEach items="${flights}" var= "flight">
<tr>
<td>${flight.operatingAirlines}</td>
<td>${flight.departureCity}</td>
<td>${flight.arrivalCity}</td>
<td>${flight.estimatedDepartureTime}</td>
<td><a href ="showCompleteReservation?flightId=${flight.id}" class="btn btn-sm btn-outline-info ">Select</a></td>
</tr>
 </c:forEach>
</table>
</div>
<script src="webjars/jquery/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>