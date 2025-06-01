<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post"> 
<input type="text" name="number" placeholder="Enter Number"> 
<input type="submit" value="Calculate"> 
</form> 
<% 
     String no=request.getParameter("number"); 
     if(no!=null) 
     { 
          int n=Integer.parseInt(no),last,first; 
          last=n%10; 
          while(n>=10)  
          {   
               n=n/10; 
          } 
          first=n; 
          int sum=first+last; 
          out.println("<h1 style='color:red;font-size:18;'>Sum = "+sum+"</h1>"); 
     } 
%> 
</body>
</html>