package com.example.demo.model;



public abstract  class Transport1{ // using abstraction
	
	// using encapsulation
	 protected String source;        // start journey
	 protected String desitination; // end journey
	 protected double ticketFare;
	 
	 public Transport1(String source, String desitination, double ticketFare) {// using Constructor
		 this.source=source;
		 this.desitination = desitination;
		 this.ticketFare= ticketFare;
		 
	 }
	 
	 public abstract  double calculateticket();
	 
	
}
