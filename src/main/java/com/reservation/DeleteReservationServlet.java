package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		boolean isTrue;
		
		isTrue = LoginDBUtil.deleteReservation(id);
		
		//If delete successfully
		if(isTrue==true) {
			//Get list from Customer class
			List <Customer> cusDetails =LoginDBUtil.Display();	
		    request.setAttribute("cusDetails", cusDetails);
			
		    //Return to records page
			RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
			dis.forward(request, response);
			  }
		    //if error occurred
			else {
			List <Customer> cusDetails =LoginDBUtil.Display();	
		    request.setAttribute("cusDetails", cusDetails);
			//Returns to records page    
		    RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
		    dis.forward(request, response);
			}
		
		
		
	}

}
