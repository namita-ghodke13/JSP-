<%@page import="java.sql.*"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Details</title>
</head>
<body>
<% 
   try 
   { 
        Class.forName("org.postgresql.Driver"); 
        Connection con=DriverManager.getConnection("jdbc:postgresql:namita","postgres","root"); 
        String query="select * from Patient"; 
        PreparedStatement pmt=con.prepareStatement(query); 
        ResultSet rs=pmt.executeQuery(); 
%> 
<table border="3"> 
<tr> 
   <th>PNo</th> 
   <th>PName</th> 
   <th>Address</th> 
   <th>Age</th> 
   <th>Disease</th> 
</tr>
<%
      while(rs.next())
      { 
%>      
           <tr> 
               <td><%=rs.getInt(1) %></td> 
               <td><%=rs.getString(2) %></td> 
               <td><%=rs.getString(3) %></td> 
               <td><%=rs.getInt(4) %></td> 
               <td><%=rs.getString(5)%></td> 
           </tr>  
<%
      } 
%>  
</table> 
<% 
    }
    catch(Exception e) 
    { 
         System.out.println(e); 
    }
%>
</body>
</html>