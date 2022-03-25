<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script>
   function redirectDelete() {
      if (confirm("Are you sure you want to delete!")) {
		  document.getElementById("del").submit();
     }else {
	      document.getElementById("iID").value = '0';
	      document.getElementById("del").submit();
    }
   }
window.onload = redirectDelete;
</script>
</head>
<body>
  		<%
		String id = request.getParameter("id");
		%>
		<form action="delete" id = "del" style=" display:none" method="POST">
		   <input type="text"  name="cusid" id="iID"  value = "<%= id %>"/>
		   <input type="submit"  value="Submit" >		
		</form>
</body>
</html>