package com.example.demo.model;

public class Flight  extends  Transport1{

	private boolean isInternational;
	private double luggageWeight;
	
	
	
	public Flight(String source, String desitination, double ticketFare,  boolean isInternational , double weight) {
		super(source, desitination, ticketFare);
		
		 this.isInternational=isInternational;
		 this.luggageWeight= weight;
		 
	}

	
	
	@Override
	public double calculateticket() {
		  double ticket = ticketFare;

	        if (isInternational) {
	            ticket += 2000; // International charges
	        }

	        // Extra luggage charges
	        if (luggageWeight > 15) {
	           ticket += (luggageWeight - 15) * 25;
	        }
	        return ticket;
	    }

	}

