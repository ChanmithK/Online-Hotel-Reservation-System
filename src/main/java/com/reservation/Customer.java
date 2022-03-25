package com.reservation;

import java.util.Date;

public class Customer {
	 private int id;
	 private String name;
	 private String email;
	 private String phone;
	 private String nic;
	 private String roomNo;
	 private int noOfPeople;
	 private String roomType;
	 private Date arrivalDate;
	 private Date departureDate;
	 
	 //Implement constructor
	 public Customer(int id, String name, String email, String phone, String nic, String roomNo ,int noOfPeople ,String roomType,Date arrivalDate,Date departureDate) {
	 this.id = id;
	 this.name = name;
	 this.email = email;
	 this.phone = phone;
	 this.nic= nic;
	 this.roomNo =roomNo;
	 this.noOfPeople=noOfPeople;
	 this.roomType=roomType;
	 this.arrivalDate=arrivalDate;
	 this.departureDate=departureDate;
    }
      
	//Getters for each variables 
  public int getId() {
	        return id;
	 }

  public String getName() {
    return name;
     }

  public String getEmail() {
    return email;
     }

  public String getPhone() {
	return phone;
	 } 
  public String getnic() {
	return nic;
	 }  
  public String getRoomNo() {
	return roomNo;
	 }  
  public int getnoOfPeople() {
	return noOfPeople;
	 }
  public String getroomType() {
	return roomType;
	 }
  public Date getarrivalDate() {
	return arrivalDate;
	 }
  public Date getdepartureDate() {
	return departureDate;
	 }
}
