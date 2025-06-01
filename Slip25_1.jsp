<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post"> 
<input type="text" name="name" placeholder="Enter Name of Voter"><br><br> 
<input type="text" name="age" placeholder="Enter age of Voter"><br><br> 
<input type="submit" value="check"> <br><br>
</form> 
<% 
    String name=request.getParameter("name"); 
    if(name!=null) 
    { 
         int age=Integer.parseInt(request.getParameter("age")); 
         if(age>=18) 
         { 
              out.println("\nEligible for Voting"); 
         } 
         else 
         { 
              out.println("\nNot Eligible for Voting"); 
         } 
    } 
%>
</body>
</html>