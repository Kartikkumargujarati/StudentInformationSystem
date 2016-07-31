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



<form method="post" action="updatebyuser.jsp">

<center><h1  style="color:white; font-size:35px">Edit Your Information</h1></center>
<h1 style="color:green"></h1>
 <td><center><div align="left"> <a href="editbyuser.jsp"><input  type="submit" style = "margin-top:30px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px" value="Go Back"/> </a></div></center> </td>
            <center>
           <br /><table border="1" width="98%" cellpadding="6" bgcolor="white">
            
           
            
  
                
                <tbody bgcolor="white">
                    
                    <tr >
                        <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Student ID</strong></td>
                         <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>First Name</strong></td>
                          <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Last Name</strong></td>
                           <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Date of Birth</strong></td>
                            <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Address</strong></td>
                            <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Major</strong></td>
                             <td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Phone Number</strong></td>
                               
                             
                        
                    </tr>
                    
                    
<%


try {
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost/login";
	String username="root";
	String password="root";
	String query="select * from studentinfo where student_id="+session.getAttribute("student_id");
	Connection conn=DriverManager.getConnection(url,username,password);
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	while(rs.next())
	{

	%>
	<tr>
<td><center><input type="text" style="width:120px; font-size:16px" name="student_id" value="<%=rs.getString("student_id")%>"></center></td>
<td><center><input type="text" style="width:100px; font-size:16px" name="stud_first_name" value="<%=rs.getString("stud_first_name")%>"></center></td>
<td><center><input type="text" style="width:100px; font-size:16px" name="stud_last_name" value="<%=rs.getString("stud_last_name")%>"></center></td>
<td><center><input type="text" style="width:100px; font-size:16px" name="stud_date_of_birth" value="<%=rs.getString("stud_date_of_birth")%>"></center></td>
<td><center><input type="text" style="width:150px; font-size:16px" name="stud_address" value="<%=rs.getString("stud_address")%>"></center></td>
<td><center><input type="text" style="width:80px; font-size:16px" name="stud_major" value="<%=rs.getString("stud_major")%>"></center></td>
<td><center><input type="text" style="width:100px; font-size:16px" name="phone_no" value="<%=rs.getString("phone_no")%>"></center></td>

</tr>
</tbody>
</table>
<tr>
<td><input type="submit" style = "margin-top:30px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px" name="Submit" value="Update"></td>
</tr>
<%
}
}catch(Exception e){}
%>

</center>
</form>


</body>
</html>