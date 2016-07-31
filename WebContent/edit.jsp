<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*" %>
<%@ page import ="java.sql.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<style>
  body {background-color:lightbrown}
  h4   {color:purple}
  p    {color:white}
  
</style>
<body background= "1.jpg">

<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>
 
<center><div align="left"> <a href="inside1.jsp"><input  type="submit" style = "margin-top:30px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px" value="Go Back"/> </a></div></center> </td>
            
<form method="post" action="update.jsp">
<center><h1  style="color:white; font-size:35px"> Edit Student Information</h1></center>
<h1 style="color:green"></h1>
 <td><center>
           <br/><table border="1" width="98%" cellpadding="6" bgcolor="white">
            
           
            
  
                
                <tbody bgcolor="white">
                    
                    <tr >
                        <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Student ID</strong></td>
                         <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>First Name</strong></td>
                          <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Last Name</strong></td>
                           <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Date of Birth</strong></td>
                            <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Address</strong></td>
                            <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Major</strong></td>
                             <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Phone Number</strong></td>
                                <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>GPA</strong></td>
                              <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Total Credits</strong></td>
                              <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Tuition Balance</strong></td>
                             
                        
                    </tr>
                    
<%


try {
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost/login";
	String username="root";
	String password="root";
	String query="select * from studentinfo";
	Connection conn=DriverManager.getConnection(url,username,password);
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	while(rs.next())
	{

	%>
	<tr>
<td ><input style="width:100px; font-size:16px" type="text" name="student_id" value="<%=rs.getString("student_id")%>"></td>
<td ><input style="width:100px; font-size:16px" type="text" name="stud_first_name" value="<%=rs.getString("stud_first_name")%>"></td>
<td><input style="width:100px; font-size:16px" type="text" name="stud_last_name" value="<%=rs.getString("stud_last_name")%>"></td>
<td><input style="width:100px; font-size:16px" type="text" name="stud_date_of_birth" value="<%=rs.getString("stud_date_of_birth")%>"></td>
<td><input style="width:120px; font-size:16px" type="text" name="stud_address" value="<%=rs.getString("stud_address")%>"></td>
<td><input style="width:80px; font-size:16px" type="text" name="stud_major" value="<%=rs.getString("stud_major")%>"></td>
<td><input style="width:100px; font-size:16px" type="text" name="phone_no" value="<%=rs.getString("phone_no")%>"></td>
<td><input style="width:70px; font-size:16px" type="text" name="gpa" value="<%=rs.getString("gpa")%>"></td>
<td><input style="width:100px; font-size:16px" type="text" name="total_credits" value="<%=rs.getString("total_credits")%>"></td>
<td><input style="width:100px; font-size:16px" type="text" name="tuition_balance" value="<%=rs.getString("tuition_balance")%>"></td>
</tr>


<%
}
}catch(Exception e){}
%>
</tbody>
</table>
<br /><input type="submit" name="Submit" style = "margin-left:0px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px; font-align:center" value="Update">

</center>

</form>


</body>
</html>