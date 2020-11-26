package com.kaushik.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kaushik.flightreservation.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
