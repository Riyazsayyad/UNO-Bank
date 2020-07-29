<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"  http-equiv="refresh" content="1; url='index.jsp'" />
<title>Insert title here</title>
</head>
<body>
<%
String cho=request.getParameter("choice");

Cookie c1=new Cookie("interest",cho);
c1.setMaxAge(900);
response.addCookie(c1);
%>
<h3>your interest in stored in cookie; you will be send back to home page in 1 sec</h3>

</body>
</html>