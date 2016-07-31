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
<title>Student Information</title>
</head>
<style>
  body {background-color:lightbrown}
  h4   {color:purple}
  p    {color:white}
  h4:link, a:visited {
    color: white;
}
  
</style>

<body background= "1.jpg">

<div align="right" width="100%"><b> <font color="white">
<%= new java.util.Date() %>
</font></b></div>

<div align="right"><h4 style="color: #FFC107;text-align:right; font-size:20px; text-decoration: none"> <a href="logout.jsp" >Logout</a></h4></div>
<h3><p style="font-size:30px">Welcome Admin</p></h3> 
<center><img src ="admin.png" height="200" width="250"></center>

<center><h1  style="color:white">Student Information</h1></center>
<h1 style="color:green"></h1>
 
            <center>
           <table border="1" width="98%" cellpadding="6" bgcolor="white">
            
           
            
  
                
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
try
{
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
	<td style="font-size:18px"><%=rs.getString("student_id") %></td>
    <td style="font-size:18px"><%=rs.getString("stud_first_name") %></td>
    <td style="font-size:18px" ><%=rs.getString("stud_last_name") %></td>
    <td style="font-size:18px"><%=rs.getString("stud_date_of_birth") %></td>
    <td style="font-size:18px"><%=rs.getString("stud_address") %></td>
    <td style="font-size:18px"><%=rs.getString("stud_major") %></td>
    <td style="font-size:18px"><%=rs.getString("phone_no") %></td>
    <td style="font-size:18px"><%=rs.getString("gpa") %></td>
    <td style="font-size:18px"><%=rs.getString("total_credits") %></td>
    <td style="font-size:18px"><%=rs.getString("tuition_balance") %></td>
    
    
    </tr>
        <%

}
%>
                    </tbody>
 
    </table>
   



    
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

<form method="post" action="edit.jsp">   
<td><center><input  type="submit" style = "color:#F5F5F5;margin-top:10px;border-radius:8px; border-style:none; height:2em; width:8em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:16px" value="Edit Information"/></center></td>
</tr></form> 
<form method="post" action="add.jsp">   
<td><center><input  type="submit" style = "margin-top:30px;color:#F5F5F5;border-radius:8px; border-style:none; height:2em; width:8em; background-color:#64DD17; font-family:Italic; font-weight:600;font-size:18px"value="Add Student"/></center></td>
</form> 
 
</body>
</html>