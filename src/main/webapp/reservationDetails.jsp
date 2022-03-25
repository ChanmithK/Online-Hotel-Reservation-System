<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>

    <!-- CSS File Linking Part -->
<link rel="stylesheet" href="../ReservationDemo/reservationDetails.css">

    <!-- Background Image CSS -->
    <style>
	  body{
	       background-image: url("${pageContext.request.contextPath}/images/O4.png");
	       background-size: cover;
	       background-attachment: fixed;
	      }
	</style>
</head>
<body>
<div class="back">  
   
     <!-- Transparent Box -->
<div class="transbox">
      
      <!-- Search Bar  -->
   <form action = "search" method = "POST">
      <div class="wrap">
   <div class="search">
      <input type="text" name="search" class="searchTerm" placeholder="Search Customer ID or Name">
      <button type="submit" class="searchButton">
      <div class="image"><img class="loginpic" src="${pageContext.request.contextPath}/images/glass.png" width="20"></div>
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
   </form>
    
    <!-- Reservation Table -->
	<table class="center" >
		<tr>
			<th>Customer ID</th>
			<th>Customer Name</th>
			<th>Customer Email </th>
			<th>Customer Phone </th>
			<th>Customer NIC </th>
			<th>Room No. </th>
			<th>No Of People </th>
			<th>Room Type </th>
			<th>Arrival Date </th>
			<th>Departure Date </th>
			<th colspan="2"></th>
		</tr>
	    <c:forEach var="cus" items="${cusDetails}">
	    
	      <c:set var="id" value="${cus.id}"/>
	      <c:set var="name" value="${cus.name}"/>
	      <c:set var="email" value="${cus.email}"/>
	      <c:set var="phone" value="${cus.phone}"/>
	      <c:set var="nic" value="${cus.nic}"/>
	      <c:set var="Roomno" value="${cus.roomNo}"/>
	      <c:set var="NoOfPeople" value="${cus.noOfPeople}"/>
	      <c:set var="ArrivalDate" value="${cus.arrivalDate}"/>
	      <c:set var="DepartureDate" value="${cus.departureDate}"/>
	      <c:set var="RoomType" value="${cus.roomType}"/>
		
	    <c:url value="UpdateReservation.jsp" var="cusupdate">
	      <c:param name="id" value="${id}"/>
	      <c:param name="name" value="${name}"/>
	      <c:param name="email" value="${email}"/>
	      <c:param name="phone" value="${phone}"/>
	      <c:param name="nic" value="${nic}"/>
	      <c:param name="roomNo" value="${Roomno}"/>
	      <c:param name="noOfPeople" value="${NoOfPeople}"/>
	      <c:param name="arrivalDate" value="${ArrivalDate}"/>
	      <c:param name="departureDate" value="${DepartureDate}"/>
	      <c:param name="roomType" value="${RoomType}"/>
	    </c:url>
	    
	    <br>
	      <c:url value="deleteReservation.jsp" var="resDelete">
	      <c:param name="id" value="${id}"/>
	      <c:param name="name" value="${name}"/>
	      <c:param name="email" value="${email}"/>
	      <c:param name="phone" value="${phone}"/>
	      <c:param name="nic" value="${nic}"/>
	      <c:param name="roomNo" value="${Roomno}"/>
	      <c:param name="noOfPeople" value="${NoOfPeople}"/>
	      <c:param name="arrivalDate" value="${ArrivalDate}"/>
	      <c:param name="departureDate" value="${DepartureDate}"/>
	      <c:param name="roomType" value="${RoomType}"/>
	    </c:url>
	    
	    <tr>
		  <td>${cus.id} </td>
		  <td>${cus.name}</td>
		  <td>${cus.email}</td>
		  <td>${cus.phone}</td>
		  <td>${cus.nic}</td>
		  <td>${cus.roomNo}</td>
		  <td>${cus.noOfPeople}</td>
		  <td>${cus.roomType}</td>
		  <td>${cus.arrivalDate}</td>
		  <td>${cus.departureDate}</td>
			
		  <td><a href = "${cusupdate}">
		  <input type = "button" class = "button" name = "update" value = "Update"></input>
		  </a></td>
			
		  <c:url value = "DeleteData.jsp" var= "pDelete">
		   <c:param name="ID" value = "${ID}"></c:param>
		  </c:url>
			
	      <td><a href = "${resDelete }">
		  <input type = "button"  class = "button" name = "delete" value = "Delete"></input>
		  </a></td>
	    </tr>
	    </c:forEach>
	</table>  
     
     <!-- New Reservation Button -->
    <button class="button1" onclick="myFunction2()">New Reservation</button>
	<script>
	function myFunction2() {
  		location.replace("customerinsert.jsp")
	   }
	</script>
	
	<!-- Log Out Button -->
    <button class="button11" onclick="myFunction3()">Log Out</button>
	<script>
	function myFunction3() {
  		location.replace("managerLogin.jsp")
	   }
	</script>
</div>
</div>
</body>
</html>