<%@page import="secure.UtilsSecure"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
  body {background-color:white}
  th   {color:white; font-size:40px; 
  }
  p    {color:green}
  h4:link, a:visited {
    color: white;
}
  
  
</style>
<body background= "1.jpg"><% %>
<%

String userdbName;
String userdbPsw;

ResultSet rs = null;
String name = request.getParameter("student_id");  
String password = request.getParameter("password");



  String Encrypted=UtilsSecure.encrypt(name);
String Decrypted = UtilsSecure.decrypt(Encrypted);

  out.println("<br/><br/>ID Encrypted = "+Encrypted+"<br/><br/>ID Decrypted = "+Decrypted);
  
  String Encrypted1=UtilsSecure.encrypt(password);
  String Decrypted1 = UtilsSecure.decrypt(Encrypted1);
  out.println("<br/><br/>Password Encrypted = "+Encrypted1+"<br/><br/>Password Decrypted = "+Decrypted1);
  
  %>
  <center><h1  style="color:white; font-size:33px"><a href="checkLogin.jsp" >Click Here To Continue</a></h1></center>
</body>
</html>