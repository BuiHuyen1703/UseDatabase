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
		int id= Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int soluong = Integer.parseInt(request.getParameter("quantity"));
		float cost = Float.parseFloat(request.getParameter("cost"));
		ConnectDB obj = new ConnectDB();
		obj.insertdata(id, name, soluong, cost);
		response.sendRedirect("display.jsp");
	%>
</body>
</html>