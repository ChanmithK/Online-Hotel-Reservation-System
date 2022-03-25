<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

     <!-- CSS File Linking Part -->
  <link rel="stylesheet" href="../ReservationDemo/login.css">
 
<script>function myFunction() {
    var x = document.getElementById("myInput");
      if (x.type === "password") {
       x.type = "text";
         }else {
       x.type = "password";
    }
  }
</script>
</head>
    <!-- Background Image CSS -->
<style>
  body{
       background-image: url("${pageContext.request.contextPath}/images/o3.jpg");
       background-size: cover;
       background-attachment: fixed;
      }
</style>
<style>
    
</style>
<body>
<div class="back"> 
    <h1><br></h1>
    
  <!-- Reservation Manager's Login Form -->  
 <form action="log" method="post">
	<div class="transbox">
         <div class="containner">
            <div class="edge"></div>
            <img class="loginpic" src="${pageContext.request.contextPath}/images/user.png" width="40" height="40">
            <div class="login">Login</div>
            <div class="edge"></div>
        </div>    
    <br><br>
    
      <div class="container">
          
          <div class='name1'> <label for="uname"><b>Username</b></label></div>
          <input type="text" placeholder="Enter Username" name="uid1" required >
          <br><br>
          <div class='name1'><label for="psw"><b>Password</b></label></div>
          <input type="password" placeholder="Enter Password" name="pass1" required id="myInput"><br>
          <div class="ch1"><input type="checkbox" onclick="myFunction()">Show Password</div>
          <br><br>       
          <br><br>
          <div class=bt1><button class="button" type="submit">Login</button></div>
       
      </div>
   </div>
 </form>
</div>
</body>
</html>
