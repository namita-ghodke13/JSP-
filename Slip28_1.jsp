<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post"> 
<input type="text" name="string" placeholder="Enter String"> 
<input type="submit" value="Reverse"> <br><br>
</form> 
<% 
     String input=request.getParameter("string");  
     if(input!=null) 
     { 
           char[] a=input.toCharArray(); 
           String reversed=""; 
           for(int i=a.length-1;i>=0;i--) 
           { 
                reversed+=a[i]; 
           } 
           out.println("Reversed String : "+reversed); 
     } 
%> 
</body>
</html>