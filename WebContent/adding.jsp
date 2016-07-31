<%@page import="secure.UtilsSecure"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding</title>
</head>
<style>
h3:link, a:visited {
    color: #FFC107;
}
</style>
<body background= "1.jpg">
<%--Setting the time stamp--%>

<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>

<%try{
Connection con= null;   
PreparedStatement ps = null;
PreparedStatement ps1 = null;
PreparedStatement ps2 = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";       /*Connection to database*/  
String url = "jdbc:mysql://localhost:3306/login";
String user = "root";
String dbpsw = "root";

/* Inserting into database*/

String sql = "insert into studentinfo  (student_id, stud_first_name, stud_last_name, stud_date_of_birth, stud_address, stud_major, phone_no, gpa, total_credits, tuition_balance) values(?,?,?,?,?,?,?,?,?,?)"; 
Class.forName(driverName).newInstance();
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
String id = request.getParameter("student_id");  
String firstname = request.getParameter("stud_first_name");
String lastname = request.getParameter("stud_last_name");
String dateofbirth = request.getParameter("stud_date_of_birth");
String address = request.getParameter("stud_address");
String major = request.getParameter("stud_major");
String phoneno = request.getParameter("phone_no");
String gpa = request.getParameter("gpa");
String totalcredits = request.getParameter("total_credits");
String balance = request.getParameter("tuition_balance");


ps.setString(1,id);
ps.setString(2, firstname);
ps.setString(3,lastname);
ps.setString(4,dateofbirth);
ps.setString(5,address);
ps.setString(6,major);
ps.setString(7,phoneno);
ps.setString(8,gpa);
ps.setString(9,totalcredits);
ps.setString(10, balance);


ps.executeUpdate();

String sql1 = "insert into idpass  (student_id, password) values(?,?)";
ps1 = con.prepareStatement(sql1);
String p1=request.getParameter("student_id");
String pass = request.getParameter("password"); 
System.out.println(pass);
ps1.setString(1,id);
ps1.setString(2,pass);
ps1.executeUpdate();



String sql2 = "insert into eidpass  (user_id, password) values(?,?)";
ps2 = con.prepareStatement(sql2);
String p2=request.getParameter("student_id");
String pass2 = request.getParameter("password"); 


String Encrypted=UtilsSecure.encrypt(p2);
String Decrypted = UtilsSecure.decrypt(Encrypted);

String Encrypted1=UtilsSecure.encrypt(pass2);
String Decrypted1 = UtilsSecure.decrypt(Encrypted1);

System.out.println(pass);
ps2.setString(1,Encrypted);
ps2.setString(2,Encrypted1);
ps2.executeUpdate();

con.close();

}catch(SQLException sqe)
{
out.println(sqe);
}%>
<center><h1  style="color:#EEFF41; font-size:35px">New User Successfully Added...!!!</h1></center>
<div align="left"><h3 style= "text-align:left; font-size:20px; color:inherit  ;text-decoration: none"> <a href="inside1.jsp">Go to Student Information Page</a></h3></div>
</body>
</html>