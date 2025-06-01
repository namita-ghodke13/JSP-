<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="demo.jsp">
Enter Id : <input type="text" name="id">
Enter Name :<input type="text" name="nm" >
Enter Salary: <input type="text" name="sal" >
<input type="submit" value="Submit">
</form>
<%
   try
{
	   Class.forName("org.postgresql.Driver"); 
       Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/college","postgres","root"); 
       int id=Integer.parseInt(request.getParameter("id"));
       String name=request.getParameter("nm");
       int salary=Integer.parseInt(request.getParameter("sal"));
       String q="insert into teacher values(?,?,?)"; 
       PreparedStatement p=con.prepareStatement(q);
       p.setInt(1,id);
       p.setString(2,name);
       p.setInt(3,salary);
       p.executeUpdate();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>