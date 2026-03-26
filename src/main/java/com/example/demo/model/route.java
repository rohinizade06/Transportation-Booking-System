package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class route {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

	    private  String  source;
		private String destination;
		 private double price;
		 public int getId() {
			 return id;
		 }
		 public void setId(int id) {
			 this.id = id;
		 }
		 public String getSource() {
			 return source;
		 }
		 public void setSource(String source) {
			 this.source = source;
		 }
		 public String getDestination() {
			 return destination;
		 }
		 public void setDestination(String destination) {
			 this.destination = destination;
		 }
		 public double getPrice() {
			 return price;
		 }
		 public void setPrice(double price) {
			 this.price = price;
		 }
		 
		 
}
