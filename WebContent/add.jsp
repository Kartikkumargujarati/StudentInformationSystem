<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*" %>
<%@ page import ="java.sql.*" %>

<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   %>
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
</head>
<style>
  body {background-color:lightbrown}
  h4   {color:purple}
  p    {color:purple}
  
</style>
<body background= "1.jpg">

<%--Setting the time stamp--%>

<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>

<center><h1  style="color:white; font-size:33px"> Add New Student Information</h1></center>

 <form method="post" action="adding.jsp">   <%--Redirection to adding.jsp page--%>
            <center>
           <table border="1" width="48%" cellpadding="6" bgcolor="white">
            
            <%--Table with different attribute of student information--%>
   
                <tbody> 
                    
                        <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Student ID</strong></td>
                        <td><input style="width:250px; font-size:16px" type="text" name="student_id"/></td></tr>
                        <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Password</strong></td>
                        <td><input style="width:250px; font-size:16px" type="text" name="password"/></td></tr>
                         <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>First Name</strong></td>
                         <td><input style="width:250px; font-size:16px" type="text" name="stud_first_name"/></td></tr>
                          <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Last Name</strong></td>
                          <td><input style="width:250px; font-size:16px" type="text" name="stud_last_name"/></td></tr>
                           <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Date of Birth</strong>
                           <td><input style="width:250px; font-size:16px" type="text" name="stud_date_of_birth"/></td></tr>
                            <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Address</strong></td>
                            <td><input style="width:250px; font-size:16px" type="text" name=stud_address/></td></tr>
                            <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Major</strong></td>
                            <td><input style="width:250px; font-size:16px" type="text" name="stud_major"/></td></tr>
                             <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Phone Number</strong></td>
                             <td><input style="width:250px; font-size:16px" type="text" name="phone_no"/></td></tr>
                                <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>GPA</strong></td>
                                <td><input style="width:250px; font-size:16px" type="text" name=gpa/></td></tr>
                              <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Total Credits</strong></td>
                              <td><input style="width:250px; font-size:16px" type="text" name="total_credits"/></td></tr>
                              <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Tuition Balance</strong></td>
                              <td><input style="width:250px; font-size:16px" type="text" name="tuition_balance"/></td></tr>
</tbody>
                 </table>
                 </center>

                    
                   
<br /><td><center><input  type="submit" style = "margin-left:0px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px; font-align:center" value="Add Student"/></center></td> <%--ADD Button --%>
</form> 
<br /><td><center><div align=""> <a href="inside1.jsp"><input  type="submit" style = "margin-left:0px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px; font-align:center" value="Back"/> </a></div></center> </td>
         
</body>
</html>