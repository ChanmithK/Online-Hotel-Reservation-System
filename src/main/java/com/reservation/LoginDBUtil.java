package com.reservation;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



public class LoginDBUtil {

	 private static boolean isSuccess;
	 private static Connection con = null;
	 private static Statement stmt = null;
	 private static ResultSet rs = null;
	 
	 /* user login */
	 public static boolean validate1 (String username,String password){
			
		 try {
			 //Database Connection
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 //extract data from database
			 String sql = "select MUname,MPassword from reservationmanager where MUname= '"+username+"' and MPassword='"+password+"'";
			 rs =stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 String userName = rs.getString(1);
				 String password1  = rs.getString(2);
				 
				 if(userName != null && password1 != null) {
					 isSuccess =true;
					 break;
				 }else {
					 isSuccess = false;
				 }
			 }
		 }
		 catch (Exception e) {
	    		e.printStackTrace();
	    	}
		 return isSuccess;
	 }
	 
	 /* Get data from database */
	 public static List<Customer> Display(){
		
		 ArrayList<Customer> cus = new ArrayList<>();
		 
		 
		 try {
			 //Database Connection
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 //extract data from database
			 String sql = "select * from customer";
			 rs =stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 int id = rs.getInt(1);
				 String name = rs.getString(2);
				 String email = rs.getString(4);
				 String phone = rs.getString(3); 
				 String nic1   =rs.getString(5);
				 String roomNo1 =rs.getString(7);
				 int noOfPeople=rs.getInt(6);
				 String roomType =rs.getString(8);
				 Date arrivalDate =rs.getDate(9);
				 Date departureDate =rs.getDate(10);
				 Customer c = new Customer(id,name,email,phone,nic1,roomNo1,noOfPeople,roomType,arrivalDate,departureDate);
				 cus.add(c);
			 }
		 }
		 catch (Exception e) {
	    		e.printStackTrace();
	    	}
		 return cus;
	 }
	
	  
	 public static boolean insertcustomer(String name,String email,String phone,String nic, String noOfPeople,String roomNo,String roomType,String arrivalDate, String departureDate) {
		 boolean isSuccess = false;
		 try {
			   //Database Connection
		 	 	con = DBConnect.getConnection();
		 		stmt = con.createStatement();
		 		
		 	   //Insert data
		 		String sql = "insert into customer values (0,'"+name+"','"+phone+"','"+email+"','"+nic+"','"+noOfPeople+"','"+roomNo+"','"+roomType+"','"+arrivalDate+"','"+departureDate+"')";
		 		int rs = stmt.executeUpdate(sql);
		 		
		 		if(rs > 0) {
		 			isSuccess = true;
		 		} else {
		 			isSuccess = false;
		 		}
		 		
		 	}
		 	catch (Exception e) {
		 		e.printStackTrace();
		 	}
			
		 	return isSuccess;
		 }
	
	
	  /* Update existing records in database */
	  public static boolean updatecustomer(String id,String name,String email,String phone,String nic, String noOfPeople,String roomNo,String roomType,String arrivalDate, String departureDate) {
	    	
	    	try {
                 
	    		//Database Connection
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		
	    		//Update data of database
	    		String sql = "update customer set name='"+name+"',phone='"+phone+"',email='"+email+"',nic='"+nic+"',NoOfPeople='"+noOfPeople+"',RoomNo='"+roomNo+"',RoomType='"+roomType+"',ArrivalDate='"+arrivalDate+"',DepartureDate='"+departureDate+"'"
	    				+ "where id='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	  
	 
	  public static List<Customer> getCustomerDetails() {
	    	
	    	
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from customer";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
					 String name = rs.getString(2);
					 String email = rs.getString(4);
					 String phone = rs.getString(3); 
					 String nic  =rs.getString(5);
					 String roomNo =rs.getString(7);
					 int noOfPeople=rs.getInt(6);
					 String roomType =rs.getString(8);
					 Date arrivalDate =rs.getDate(9);
					 Date departureDate =rs.getDate(10);
					Customer c = new Customer(id,name,email,phone,nic,roomNo,noOfPeople,roomType,arrivalDate,departureDate);
					cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    } 
	  
	  
	  /* Delete Specific data from database */
	  public static boolean deleteReservation(String id) {
		  
		  int convId = Integer.parseInt(id);
		  try {
	    		
			    //Database Connection
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		
	    	    //Delete data from database
	    		String sql = "delete from customer where id='"+convId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	  
	  /* Search relevant data from database */
	  public static List<Customer> search(String search) {
		  ArrayList<Customer> cus = new ArrayList<>();
			 try {
				//Database Connection
				 con = DBConnect.getConnection();
				 stmt = con.createStatement();
				 
				 String sql = "select * from customer where name='"+search+"' or id='"+search+"'";
				 rs =stmt.executeQuery(sql);
				 /* Search relevant data */
				 while(rs.next()) {
					 int id = rs.getInt(1);
					 String name = rs.getString(2);
					 String email = rs.getString(4);
					 String phone = rs.getString(3); 
					 String nic1   =rs.getString(5);
					 String roomNo1 =rs.getString(7);
					 int noOfPeople=rs.getInt(6);
					 String roomType =rs.getString(8);
					 Date arrivalDate =rs.getDate(9);
					 Date departureDate =rs.getDate(10);
					 Customer c = new Customer(id,name,email,phone,nic1,roomNo1,noOfPeople,roomType,arrivalDate,departureDate);
					 cus.add(c);
				 }
			 }
			 catch (Exception e) {
		    		e.printStackTrace();
		    	}
			 return cus;
		  }
	    
}
