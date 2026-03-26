package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.UserRepository.RouteRepository;
import com.example.demo.model.Booking_model;
import com.example.demo.model.route;
import com.example.demo.service.Booking_service;

@Controller
public class Booking_controller {

    @Autowired
    private Booking_service sr;

    @Autowired
    private RouteRepository ropo;

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/bookticket")
    public String showbookingForm(Model model) {
        model.addAttribute("routes", ropo.findAll());
        return "bookingform";
    }

    @PostMapping("/bookticket")
    public String savedata(@ModelAttribute Booking_model m,
                           @RequestParam("rid") int rid) {

        route r = ropo.findById(rid)
                .orElseThrow(() -> new RuntimeException("Route Not Found"));

        m.setSource(r.getSource());
        m.setDestination(r.getDestination());
        m.setBaseFare(r.getPrice());

        sr.calculateAndSave(m);

        // redirect based on transport
        if (m.getTransportType().equalsIgnoreCase("Bus"))
            return "redirect:/busTickets";
        else if (m.getTransportType().equalsIgnoreCase("Train"))
            return "redirect:/trainTickets";
        else
            return "redirect:/flightTickets";
    }

    @GetMapping("/busTickets")
    public String busTickets(Model model) {
        model.addAttribute("ticket", sr.getByTransport("Bus"));
        return "busTickets";
    }

    @GetMapping("/trainTickets")
    public String trainTickets(Model model) {
        model.addAttribute("ticket", sr.getByTransport("Train"));
        return "trainTickets";
    }

    @GetMapping("/flightTickets")
    public String flightTickets(Model model) {
        model.addAttribute("ticket", sr.getByTransport("Flight"));
        return "flightTickets";
    }

    @GetMapping("/delete4/{id}")
    public String delete(@PathVariable int id) {
        sr.delete(id);
        return "redirect:/bookticket";
    }
    
    @GetMapping("/searchTickets")
    public String searchTickets(
            @RequestParam("keyword") String keyword,
            Model model) {

        model.addAttribute("tickets", sr.searchByRoute(keyword));
        model.addAttribute("keyword", keyword);

        return "search-results";
    }

}
