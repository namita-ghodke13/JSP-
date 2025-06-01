<%@page import="java.util.Calendar" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Slip22_2.jsp"> 
<input type="text" name="name" placeholder="Enter Name"> <br><br>
<input type="submit" value="Greet"> 
</form>
<%  
    Calendar calendar=Calendar.getInstance(); 
    String name=request.getParameter("name"); 
    int hours=calendar.get(Calendar.HOUR_OF_DAY); 
    String greet=""; 
    if(hours>=5 && hours<=12)  
    {  
         greet="Good Morning"; 
    } 
    else if(hours>12 && hours<=18) 
    { 
         greet="Good Afternoon"; 
    } 
    else 
    { 
         greet="Good Evening"; 
    } 
    out.println("<h1>"+greet+" "+name+ "</h1>");
%>
</body>
</html>