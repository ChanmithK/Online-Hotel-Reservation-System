<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- CSS File Linking Part -->
<link rel="stylesheet" href="../ReservationDemo/UpdateReservation.css">
  
  <!-- Background Image CSS -->
  <style>
  body{
       background-image: url("${pageContext.request.contextPath}/images/o3.jpg");
       background-size: cover;
       background-attachment: fixed;
      }
      
  </style>
</head>
<body>
  <div class="back">
	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String nic = request.getParameter("nic");
	String RoomNo = request.getParameter("roomNo");
	String NoOfPeople = request.getParameter("noOfPeople");
	String arrivalDate = request.getParameter("arrivalDate");
	String departureDate = request.getParameter("departureDate");
	String roomType = request.getParameter("roomType");
	%>

  <!-- Update Reservation Form -->
 <form action ="update" method="post">
     <div class="transbox">
         <div class="container">
                    <div class="word10">UPDATE RESERVATION</div>     
                    <div class="labelnew7"> <label for="uname"><b>Customer ID</b></label></div><br>
                    <input type="text" placeholder="Enter Name" name="cusid" value="<%=id %>" readonly ><br>
                    <div class="labelnew8"><label for="uname"><b>Name</b></label></div><br>
                    <input type="text" placeholder="Enter Name" name="name" value="<%=name %>" ><br>
                    <div class="labelnew8"><label for="uname"><b>Email</b></label></div><br>
                    <input type="text" placeholder="Enter Email" name="email" value="<%= email%>" ><br>
                    <div class="labelnew"> <label for="uname"><b>Phone Number</b></label><br></div>
                    <input type="text" placeholder="Enter Phone number" name="phone" value="<%= phone%>" ><br>
                    <div class="labelnew1"> <label for="uname"><b>NIC</b></label><br></div>
                    <input type="text" placeholder="Enter NIC" name="nic" value="<%= nic%>" ><br>
                    <div class="labelnew2"> <label for="uname"><b>Room No</b></label><br></div>
                    <input type="text" placeholder="Enter Room No" name="roomn" value="<%= RoomNo%>" ><br>
                    <div class="labelnew3"> <label for="uname"><b>People</b></label><br></div>
                    <input type="text" placeholder="Enter Number Of People" name="nop" value="<%=NoOfPeople%>" ><br>
         
                    <div class="labelnew4"><label for="psw"><b>Room Type</b></label><br></div> 
                     <%
                      String room =roomType;
                      System.out.println("Room Type:"+room);
                      if(room.equals("Single")){
                     %>
                            <label class="container1">Single
							  <input type="radio" name="Roomtype" value="Single"  id="Single" checked >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Double
							  <input type="radio" name="Roomtype" value="Double" id="Double"  >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Triple
							  <input type="radio" name="Roomtype" value="Triple" id="Triple" >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Quat
							  <input type="radio" name="Roomtype" value="Quat" id="Quat">
							  <span class="checkmark"></span>
							</label>

                     <br><br>
                     <% }
                     else if(room.equals("Double")){
                     %>
                      <label class="container1">Single
							  <input type="radio" name="Roomtype" value="Single"  id="Single" checked >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Double
							  <input type="radio" name="Roomtype" value="Double" id="Double" checked >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Triple
							  <input type="radio" name="Roomtype" value="Triple" id="Triple" >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Quat
							  <input type="radio" name="Roomtype" value="Quat" id="Quat">
							  <span class="checkmark"></span>
							</label>    
                     <% } 
                     else if(room.equals("Triple")){
                     %>
                      <label class="container1">Single
							  <input type="radio" name="Roomtype" value="Single"  id="Single"  >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Double
							  <input type="radio" name="Roomtype" value="Double" id="Double"  >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Triple
							  <input type="radio" name="Roomtype" value="Triple" id="Triple" checked>
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Quat
							  <input type="radio" name="Roomtype" value="Quat" id="Quat">
							  <span class="checkmark"></span>
							</label>    
                     <% } 
                     else if(room.equals("Quat")){
                     %>
                      <label class="container1">Single
							  <input type="radio" name="Roomtype" value="Single"  id="Single"  >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Double
							  <input type="radio" name="Roomtype" value="Double" id="Double"  >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Triple
							  <input type="radio" name="Roomtype" value="Triple" id="Triple" >
							  <span class="checkmark"></span>
							</label>
							<label class="container1">Quat
							  <input type="radio" name="Roomtype" value="Quat" id="Quat" checked>
							  <span class="checkmark"></span>
							</label>
							<% } %>	    
                    <div class="labelnew5"> <label for="uname"><b>Arrival Date</b></label><br></div>
                    <input type="date" placeholder="Arrival Date" name="arrivald" value="<%=arrivalDate%>" ><br>
                    <div class="labelnew6"> <label for="uname"><b>Departure Date</b></label><br></div>
                    <input type="date" placeholder="Departure Date" name="departured" value="<%= departureDate%>" ><br>
                    <div class="word8"><button class="button" type="submit">UPDATE RESERVATION</button></div>
         </div>
     </div>
 </form>
 </div>
</body>
</html>