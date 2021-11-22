<%@page import="controller.ConnectDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
	ConnectDB ob = new ConnectDB();
	ob.delete(id);
	response.sendRedirect("display.jsp");
	%>
</body>
</html>