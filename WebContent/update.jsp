<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<div align="right" width="100%"><b>&nbsp;Date 
and time:&nbsp; <font color="black">
<%= new java.util.Date() %>
</font></b></div>
<%try{
Connection con= null;   
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";           
String url = "jdbc:mysql://localhost:3306/login";
String user = "root";
String dbpsw = "root";

String id = request.getParameter("student_id");  
String firstname = request.getParameter("stud_first_name");
String lastname = request.getParameter("stud_last_name");
String dateofbirth = request.getParameter("stud_date_of_birth");
String address = request.getParameter("stud_address");
String major = request.getParameter("stud_major");
String phoneno = request.getParameter("phone_no");
String gpa = request.getParameter("gpa");
String totalcredits = request.getParameter("total_credits");
String totalbalance = request.getParameter("tuition_balance");

String sql = "update  studentinfo set  stud_first_name='"+firstname+"', stud_last_name='"+lastname+"', stud_date_of_birth='"+dateofbirth+"', stud_address='"+address+"', stud_major='"+major+"', phone_no='"+phoneno+"', gpa='"+gpa+"', total_credits='"+totalcredits+"', tuition_balance='"+totalbalance+"' where student_id='"+id+"'"; 
Class.forName(driverName).newInstance();
con = DriverManager.getConnection(url, user, dbpsw);
Statement st=null;
st=con.createStatement();
st.executeUpdate(sql);

con.close();
response.sendRedirect("inside1.jsp");

}catch(SQLException sqe)
{
out.println(sqe);
}%>


</body>
</html>