package com.reservation;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManagerLoginServlet")
public class ManagerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid1");
		String password = request.getParameter("pass1");
		
		
			
		boolean isTrue = LoginDBUtil.validate1(username, password);
		//If login successfully
		if(isTrue==true) {
		List <Customer> cusDetails =LoginDBUtil.Display();	
	    request.setAttribute("cusDetails", cusDetails);
	    
	    //Return to records page	
		RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
		dis.forward(request, response);
		}
		//if login unsuccessfully redirect to login page 
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='managerLogin.jsp'");
			out.println("</script>");
		}
	}
}	
	

