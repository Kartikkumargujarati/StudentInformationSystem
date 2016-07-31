<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="nl.captcha.Captcha"%>
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
<title>Login Page</title> <%--Title for the page --%>
</head>

<style>
  body {background-color:white}
  th   {color:white; font-size:40px; 
  }
  p    {color:green}
  
  
</style>

<body background= "1.jpg"> <%--Background used --%>

<%--The time stamp for the page --%>

<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>

<center><img src ="logo1.png.jpg" height="380" width="300" align=left></center>
<form method="post" action="checkLogin.jsp"> <%--Redirects to checkLogin.jsp to check the credentials. --%>
<center>
 <table   width="50%" cellpadding="20">
 <thead>
    <tr>
   <th colspan="2" >Login Here </th>
      </tr>
  </thead>
  
<tr>  <%-- user supposed to enter their ID--%>
<td style = "color:white; font-size:20px"><strong>Enter User ID:</strong> </td>
<td><input style="border:4px solid #80D8FF; height:20px" type="text" name="student_id"/></td>
</tr>
<tr> <%-- User supposed to enter password --%>
<td style = "color:white; font-size:20px"><strong>Enter Password:</strong> </td>
<td><input style="border:4px solid #80D8FF; height:20px" type="password" name="password"/></td>
</tr>

<tr> <%--User supposed to enter captcha --%>
<td><img id="captcha" src="<c:url value="simpleCaptcha.jpg" />" width="150"></center></td>

<td><input type="text" style="border:4px solid #80D8FF; height:20px" name="answer" /><br> 


</td>




</tr>

<tr>

<td ><input  type="submit"  style = "color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:20px" value="Login"/></td>

</tr>

</table></center>
</form>



</body>
</html>