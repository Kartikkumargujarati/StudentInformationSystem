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
<title>Information </title>
</head>
<style>
  body {background-color:white}
  h4   {color:purple}
  p    {color:white;
  		font-size: 30px}
  h4:link, a:visited {
    color: white;
}
  
</style>
<body background= "1.jpg">     <%--Setting the time stamp--%>

<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>

<div align="right"><h4 style="color: #FFC107;text-align:right; font-size:20px; text-decoration: none""> <a href="logout.jsp" >Logout</a></h4></div>
<h3><p >Welcome, <%=session.getAttribute("student_id") %></p></h3> 


<center><h1  style="color:white">Your Information</h1></center>
<h1 style="color:green"></h1>
 
 <%
try
{
Class.forName("com.mysql.jdbc.Driver");        /*Connection to database*/  
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
 
            <center>
           <table border="1" width="48%" cellpadding="6" bgcolor="white">
            
           
            
  <%--Table with different attribute of student information--%>
                
                <tbody>
                    
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Student ID</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("student_id") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>First Name</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("stud_first_name") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Last Name</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("stud_last_name") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Date of Birth</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("stud_date_of_birth") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Address</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("stud_address") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Major</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("stud_major") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Phone Number</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("phone_no") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>GPA</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("gpa") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Total Credits</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("total_credits") %></td></tr>
                    <tr><td style="color:white;font-size:20px;text-align:center " bgcolor="#0277BD" ><strong>Tuition Balance</strong></td>
                    <td style="width:250px; font-size:20px"><%=rs.getString("tuition_balance") %></td></tr>
                    
                       </tbody>
 
    </table>  
                 
                    

	 
   <tr>
    <form method="post" action="editbyuser.jsp">   
<br /><td><center><input  type="submit" style = "margin-left:0px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:6em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px; font-align:center" value="Edit"/></center></td>
</form>
    </tr>
        <%

}
%>
                   
  <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>  
</center>      
</body>
</html>