package com.kaushik.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kaushik.flightreservation.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
