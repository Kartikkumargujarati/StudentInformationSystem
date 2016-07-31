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
<title>Home</title>
</head>
<style>
  body {background-color:white}
  h1   {color:#FFC107}
  p    {color:green}
  h3 {
    text-decoration: none;
}
h3:link, a:visited {
    color: #FFC107;
}

</style>
<body background= "4.jpg">
<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>
<center ><h1 style= "text-align:center; font-size:40px"> North Carolina A & T State University</h1></center>
<center ><h1 style= "text-align:center">Student Information System</h1></center>   
<center><img src ="img1.png" height="250" width="600"></center>  
<div align="center"><h3 style= "text-align:center; font-size:30px; color: inherit ;text-decoration: none"> <a href="login.jsp" >Login Here</a> </h3></div>  

</body>
</html>