package com.kaushik.flightreservation.services;

import com.kaushik.flightreservation.dto.ReservationRequest;
import com.kaushik.flightreservation.entities.Reservation;

public interface ReservationService {
	
	public Reservation bookFlight(ReservationRequest request);
}
