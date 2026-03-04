package com.example.demo.model;

public class Train extends Transport1{// child class

		 private String classType; // Sleeper , 3Ac, 2ac, 1ac
		
		
		 public Train(String source, String desitination, double ticketFare, String classType) {
			super(source, desitination, ticketFare);
			this.classType =  classType;
		}

		@Override
		public double calculateticket() {
			
			 switch(classType.toLowerCase()) {
			 case "sleeper" : return ticketFare + 100;
			 case "3ac" : return ticketFare + 300;
			 case "2ac":     return ticketFare + 500;
	         case "1ac":     return ticketFare + 800;
	         default:        return ticketFare;
			 }
			 
		} 
		
	}

