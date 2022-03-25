<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- CSS File Linking Part -->
<link rel="stylesheet" href="../ReservationDemo/customerinsert.css">
  
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
  
  <!-- Insert Reservation Form -->
 <form action ="insert" method="post">
   <div class="transbox">
	    <div class="container">
	      <div class="word10">NEW RESERVATION</div>     
	      <div class="labelnew8"><label for="uname"><b>Name</b></label></div><br>
	        <input type="text" placeholder="Enter Name" name="name" required ><br>
	      <div class="labelnew8"><label for="uname"><b>Email</b></label><br>
	        <input type="email" placeholder="Enter Email" name="email" required ></div><br>
	      <div class="labelnew"> <label for="uname"><b>Phone Number</b></label><br></div>
	        <input type="text" placeholder="Enter Phone number" name="phone" required ><br>
	      <div class="labelnew1"> <label for="uname"><b>NIC</b></label><br></div>
	        <input type="text" placeholder="Enter NIC" name="nic" required ><br>
	      <div class="labelnew2"> <label for="uname"><b>Room No</b></label><br></div>
	        <input type="text" placeholder="Enter Room No" name="roomn" required ><br>
	      <div class="labelnew3"> <label for="uname"><b>People</b></label><br></div>
	        <input type="text" placeholder="Enter Number Of People" name="nop" required ><br>
	      <div class="labelnew4"><label for="psw"><b>Room Type</b></label><br></div>            
	          
	      <label class="container1">Single
		    <input type="radio" name="roomt" value="Single">
		    <span class="checkmark"></span>
		  </label>
		  <label class="container1">Double
		    <input type="radio" name="roomt" value="Double">
		    <span class="checkmark"></span>
		  </label>
		  <label class="container1">Triple
			<input type="radio" name="roomt" value="Triple">
			<span class="checkmark"></span>
		  </label>
		  <label class="container1">Quat
			<input type="radio" name="roomt" value="Quat">
			<span class="checkmark"></span>
		  </label>
	      <br><br>
	        
	      <div class="labelnew5"> <label for="uname"><b>Arrival Date</b></label><br></div>
	        <input type="date" placeholder="Arrival Date" name="arrivald" required ><br>
	      <div class="labelnew6"> <label for="uname"><b>Departure Date</b></label><br></div>
	        <input type="date" placeholder="Departure Date" name="departured" required ><br>
	      <div class="word8"><button class="button" type="submit">CREATE RESERVATION</button></div>
	  </div>
  </div>
 </form>
 </div>
</body>
</html>