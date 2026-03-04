package com.example.demo.UserRepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.route;

public interface RouteRepository extends JpaRepository<route, Integer> {

	
	 List<route> findBySourceAndDestination(String source, String destination);
	 
	  @Query("SELECT r FROM route r WHERE " +"LOWER(r.source) LIKE LOWER(CONCAT('%', :keyword, '%')) " +
	  "OR LOWER(r.destination) LIKE LOWER(CONCAT('%', :keyword, '%'))")
	    List<route> searchBySourceOrDestination(@Param("keyword") String keyword);
	 
}
