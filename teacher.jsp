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
<form action="teacher.jsp">
Enter Id : <input type="text" name="id">
Enter Name :<input type="text" name="nm" >
Enter Salary: <input type="text" name="sal" >
</form>
<%
   try
{
	   
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>