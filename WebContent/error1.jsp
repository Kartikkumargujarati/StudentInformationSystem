<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Error</title>
</head>
<%--prints the error message to the user if the entered record is not found and stays on login page --%>
<body>
<center><p style="color:#EEFF41;font-size:30px">Captcha is Incorrect..!!</p></center>  
<%
getServletContext().getRequestDispatcher("/login.jsp").include(request, response);  
%>
</body>
</html>