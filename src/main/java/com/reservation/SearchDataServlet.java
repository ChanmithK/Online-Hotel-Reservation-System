package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SearchDataServlet")
public class SearchDataServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
	String search = request.getParameter("search");
    
	try {
    
		List<Customer> cusDetails = LoginDBUtil.search(search);
		request.setAttribute("cusDetails", cusDetails);
		RequestDispatcher req = request.getRequestDispatcher("searchReservation.jsp");
		req.forward(request, response);

      } catch (Exception e) {
        e.printStackTrace();
    }
  }
}