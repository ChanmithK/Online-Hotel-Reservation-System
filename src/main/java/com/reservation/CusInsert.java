package com.reservation;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/CusInsert")
public class CusInsert extends HttpServlet {
private static final long serialVersionUID = 1L;


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String nic = request.getParameter("nic");
		String noOfPeople = request.getParameter("nop");
		String roomNo = request.getParameter("roomn");
		String roomType = request.getParameter("roomt");
		String arrivalDate = request.getParameter("arrivald");
		String departureDate = request.getParameter("departured");
		
    boolean isTrue;
    
        //Get whether insertion is success or not
	isTrue = LoginDBUtil.insertcustomer(name, email, phone, nic, noOfPeople, roomNo, roomType, arrivalDate, departureDate);
		//Display updated records table
		if(isTrue==true) {
			List <Customer> cusDetails =LoginDBUtil.Display();	
		    request.setAttribute("cusDetails", cusDetails);
				
			RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
			dis.forward(request, response);
			  }
			else {
		    RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
		    dis.forward(request, response);
			}
	 }
}