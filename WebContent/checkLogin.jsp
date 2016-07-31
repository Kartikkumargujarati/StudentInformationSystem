<%@ page import="nl.captcha.Captcha"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validate</title>
</head>
<body> <%--To check if the captcha entered is correct or not. --%>

<% Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);

request.setCharacterEncoding("UTF-8");

String answer = request.getParameter("answer");

if (captcha.isCorrect(answer)) {

%>
<center><b>Correct Captcha Code !</b> 
<%
String userdbName;
String userdbPsw;

Connection con= null;   
PreparedStatement ps = null;    
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";         /*Connection to database*/    
String url = "jdbc:mysql://localhost:3306/login";
String user = "root";
String dbpsw = "root";

String sql = "select * from idpass where student_id=? and password=? ";   
/*Checking the database*/  
String name = request.getParameter("student_id");  
String password = request.getParameter("password");



if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals("")) ) )  

{
try{
Class.forName(driverName).newInstance();
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, password);

rs = ps.executeQuery();


if(rs.next())
	
{ 
	
	
userdbName = rs.getString("student_id");  //get the values from the database for validation
userdbPsw = rs.getString("password");



if(name.equals("111111111") && password.equals(userdbPsw) )  //checks the userentered values with the database values
{
session.setAttribute("student_id",userdbName);
 
response.sendRedirect("inside1.jsp"); 
}else if(name.equals(userdbName) && password.equals(userdbPsw) )  //checks the userentered values with the database values
{
session.setAttribute("student_id",userdbName);
 
response.sendRedirect("authentication.jsp"); 
}  
}
else
response.sendRedirect("error.jsp"); //if Username or password is not correct shows the error
 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<% 
getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
}


}

else {
// if the captcha is incorrect, the user is redirected to error1.jsp. 
%>
<%response.sendRedirect("error1.jsp");%>
<%

%> <p>InCorrect Captcha Code !</p> <%

}

%>

</center>


</body>
</html>