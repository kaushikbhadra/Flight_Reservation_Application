package com.kaushik.flightreservation.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kaushik.flightreservation.dto.ReservationRequest;
import com.kaushik.flightreservation.entities.Flight;
import com.kaushik.flightreservation.entities.Reservation;
import com.kaushik.flightreservation.repos.FlightRepository;
import com.kaushik.flightreservation.services.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	ReservationService reservationService;
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap modelMap) {
		Optional<Flight> optional = flightRepository.findById(flightId);
		Flight flight = optional.get();
		modelMap.addAttribute("flight", flight);
		return "completeReservation";
	}
    @RequestMapping(value = "/completeReservation", method = RequestMethod.POST)
	public String completReservation(ReservationRequest request, ModelMap modelMap) {
		Reservation reservation = reservationService.bookFlight(request);
    	modelMap.addAttribute("msg", "Reservation Created successfully and the id is " + reservation.getId());
		
		return "reservationConfirmation";
	}
}
