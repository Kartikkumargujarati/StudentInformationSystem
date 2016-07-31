<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<style>
  body {background-color:white}
  h4 {color:white; font-size:30px}
 h3:link, a:visited {
    color: white;
}
  
</style>
<body background= "4.jpg">
<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>
<% session.invalidate(); %>   
<h4 >You have successfully logged out..!!</h4> 
<center><img  src ="logo11.png" height="400" width="300"></center>
<div align="center"> <h4><a href="index.jsp">Go to Home page </a></h4></div><BR> 
</body>
</html>