package com.example.demo.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.UserRepository.Booking_Repository;
import com.example.demo.UserRepository.RouteRepository;
import com.example.demo.model.*;

@Service
public class Booking_service {

	
	
	
    @Autowired
    private Booking_Repository repo;

    
    @Autowired
     private RouteRepository rao;
    
   
  
    public Booking_model calculateAndSave(Booking_model model) {
    	
    	List<route> r = rao.findBySourceAndDestination(model.getSource(), model.getDestination());

    	
    	 if (r.isEmpty()) {
    		 
    		  throw new RuntimeException("Route  Not Found database");
    		  
    	 }
    	 
    	 route  ro= r.get(0);
    	 
    	 model.setBaseFare(ro.getPrice());
    	 
    	 
        Transport1 transport = null;

        switch (model.getTransportType().toLowerCase()) {
            case "bus":
                transport = new Bus(
                    model.getSource(),
                    model.getDestination(),
                    model.getBaseFare(),
                    true
                );
                break;

            case "train":
                transport = new Train(
                    model.getSource(),
                    model.getDestination(),
                    model.getBaseFare(),
                    "3ac"
                );
                break;

            case "flight":
                transport = new Flight(
                    model.getSource(),
                    model.getDestination(),
                    model.getBaseFare(),
                    true,
                    20
                );
                break;

            default:
                throw new IllegalArgumentException("Invalid Transport Type!");
        }

        double finalFare = transport.calculateticket();
        model.setFinalFare(finalFare);

        return repo.save(model);
    }

    public List<Booking_model> getAllticket() {
        return repo.findAll();
    }

    public void delete(int id) {
        repo.deleteById(id);
    }
    
    public List<Booking_model> getByTransport(String type) {
        return repo.findByTransportType(type);
    }
    
    
    public List<route> searchByRoute(String keyword) {
        return rao.searchBySourceOrDestination(keyword);
    }

//    public List<Booking_model> searchByRoute(String keyword) {
//        return repo.findBySourceContainingIgnoreCaseOrDestinationContainingIgnoreCase(
//                  keyword, keyword);
//    }

    
   

}
