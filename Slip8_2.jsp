<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Slip8_2.jsp" method="post"> 
<input type="text" name="number" placeholder="Enter Number"> 
<input type="submit" value="check"> 
</form> 
<% 
String no=request.getParameter("number"); 
if(no!=null) 
{ 
     int n=Integer.parseInt(no),f=0; 
     for(int i=2;i<n;i++) 
     { 
           if(n%i==0) 
           { 
               f=1; 
               break; 
           } 
     } 
     if(f==0) 
          out.println("<h1 style='color:red;'>Number is Prime</h1>"); 
     else 
          out.println("<h1 style='color:red;'>Number is not Prime</h1>"); 
} 
%> 
</body>
</html>