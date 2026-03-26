package com.example.demo.model;

public class Bus  extends Transport1{ // child class
		
		private boolean  isAC;
		
		 public Bus(String source, String desitination ,  double ticketFare, boolean isAC ) {
			 super( source,  desitination,  ticketFare);
			 this.isAC = isAC;
		 }

		 @Override
		 public double calculateticket() {
			double ticket = ticketFare;
			
			 if (isAC) {
				  ticket += 50;
		 }
			 return ticket;
		 }
	}

