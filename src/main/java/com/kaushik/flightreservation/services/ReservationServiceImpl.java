package com.kaushik.flightreservation.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.flightreservation.dto.ReservationRequest;
import com.kaushik.flightreservation.entities.Flight;
import com.kaushik.flightreservation.entities.Passenger;
import com.kaushik.flightreservation.entities.Reservation;
import com.kaushik.flightreservation.repos.FlightRepository;
import com.kaushik.flightreservation.repos.PassengerRepository;
import com.kaushik.flightreservation.repos.ReservationRepository;
import com.kaushik.flightreservation.util.EmailUtil;
import com.kaushik.flightreservation.util.PDFGenerator;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	FlightRepository flightRepository;

	@Autowired
	PassengerRepository passengerRepository;

	@Autowired
	ReservationRepository reservationRepository;

	@Autowired
	PDFGenerator pdfGenerator;
	
	@Autowired
	EmailUtil emailUtil;

	@Override
	public Reservation bookFlight(ReservationRequest request) {

		// Make Payment Optional
		Long flightId = request.getFlightId();
		Optional<Flight> optional = flightRepository.findById(flightId);
		Flight flight = optional.get();

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setMiddleName(request.getPassengerMiddleName());
		passenger.setEmail(request.getPassengerEmail());
		passenger.setPhone(request.getPassengerPhone());

		Passenger savedPassenger = passengerRepository.save(passenger);

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);

		Reservation savedReservation = reservationRepository.save(reservation);
		String filePath = "D:\\JavaProject Location\\flightreservation\\Reservation pdf\\reservation-" + savedReservation.getId()
				+ ".pdf";
		pdfGenerator.generateItinerary(savedReservation,
				filePath);
		emailUtil.sendItinerary(passenger.getEmail(), filePath);
		return savedReservation;
	}

}
