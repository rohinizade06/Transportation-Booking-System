package com.example.demo.UserRepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Booking_model;

public  interface  Booking_Repository  extends JpaRepository<Booking_model, Integer>{
	 List<Booking_model> findByTransportType(String transportType);

	 List<Booking_model> findBySourceContainingIgnoreCaseOrDestinationContainingIgnoreCase(String keyword,
			String keyword2);
}
