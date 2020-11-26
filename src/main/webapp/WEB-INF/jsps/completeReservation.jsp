<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="index.css" rel="stylesheet">
<title>Complete Reservation</title>
</head>
<body class="bg-light">
	<div class="container">


		<div class="row">
			<div class="col-md-4 order-md-2 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-muted">Complete Reservation</span>
				</h4>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">Airline</h6>
							<small class="text-muted">Name of the Airline</small>
						</div> <span class="text-muted">${flight.operatingAirlines}</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">Departure City</h6>
							<small class="text-muted">City of Departure</small>
						</div> <span class="text-muted">${flight.departureCity}</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">Arrival City</h6>
							<small class="text-muted">City of Arrival</small>
						</div> <span class="text-muted">${flight.arrivalCity}</span>
					</li>
				</ul>
			</div>
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">Passenger Details</h4>
				<form action="completeReservation" method="POST"
					class="needs-validation" novalidate>
					<div class="row">
						<div class="col-md-4 mb-3">
							<label for="firstName">First name</label> <input type="text"
								name="passengerFirstName" class="form-control" required>
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>
						<div class="col-md-4 mb-3">
							<label for="middleName">Middle name<span
								class="text-muted">(Optional)</span></label> <input type="text"
								name="passengerMiddleName" class="form-control">
						</div>
						<div class="col-md-4 mb-3">
							<label for="lastName">Last name</label> <input type="text"
								name="passengerLastName" class="form-control" required>
							<div class="invalid-feedback">Valid last name is required.
							</div>
						</div>
					</div>



					<div class="mb-3">
						<label for="email">Email</label> <input type="email"
							name="passengerEmail" class="form-control"
							placeholder="you@example.com" required>
						<div class="invalid-feedback">Please enter a valid email
							address for for getting tickets via mail.</div>
					</div>

					<div class="mb-3">
						<label for="number">Phone</label> <input type="text"
							name="passengerPhone" class="form-control" required>
						<div class="invalid-feedback">Please enter your valid phone
							number.</div>
					</div>
					<hr class="mb-4">

					<h4 class="mb-3">Payment</h4>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="cc-name">Name on card</label> <input type="text"
								name="nameOnTheCard" class="form-control" required> <small
								class="text-muted">Full name as displayed on card</small>
							<div class="invalid-feedback">Name on card is required</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="cc-number">Card number</label> <input type="text"
								name="cardNumber" class="form-control" required>
							<div class="invalid-feedback">Card number is required</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 mb-3">
							<label for="cc-expiration">Expiration</label> <input type="text"
								name="expiryDate" class="form-control" required>
							<div class="invalid-feedback">Expiration date required</div>
						</div>
						<div class="col-md-3 mb-3">
							<label for="cc-cvv">CVV</label> <input type="password"
								name="securityCode" class="form-control" required>
							<div class="invalid-feedback">Security code required</div>
						</div>
					</div>
					<input type="hidden" name="flightId" value="${flight.id}" />
					<hr class="mb-4">
					<button class="btn btn-primary btn-lg btn-block" type="submit">Continue
						to checkout</button>
				</form>
			</div>
		</div>
	</div>
	<script src="webjars/jquery/jquery.min.js"></script>
	<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>