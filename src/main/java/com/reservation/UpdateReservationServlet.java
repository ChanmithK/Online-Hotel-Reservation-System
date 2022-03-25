package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateReservationServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =request.getParameter("cusid");
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String nic =request.getParameter("nic");
		String roomNo =request.getParameter("roomn");
		String noOfPeople =request.getParameter("nop");
		String roomType =request.getParameter("Roomtype");
		String arriavalDate =request.getParameter("arrivald");
		String departureDate =request.getParameter("departured");
		
		
		boolean isTrue;
		
		isTrue = LoginDBUtil.updatecustomer(id, name, email, phone, nic, noOfPeople, roomNo, roomType, arriavalDate, departureDate);
		//If update successfully
    if(isTrue == true) {
    	    //Get list from Customer class
			List<Customer> cusDetails = LoginDBUtil.getCustomerDetails();
			request.setAttribute("cusDetails", cusDetails);
			//Return to records page
			RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
			dis.forward(request, response);
		}
            //if error occurred
		else {
			List<Customer> cusDetails = LoginDBUtil.getCustomerDetails();
			request.setAttribute("cusDetails", cusDetails);
			//Returns to not success page
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}
}