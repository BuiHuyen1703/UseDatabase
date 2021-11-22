<%@page import="controller.ConnectDB"%>
<%@page import="controller.Product"%>
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
		String nname = request.getParameter("newname");
		int nquantity= Integer.parseInt(request.getParameter("newquantity"));
		float ncost = Float.parseFloat(request.getParameter("newcost"));
		Product newpro = new Product(id, nname, nquantity,ncost);
		ConnectDB obj = new ConnectDB();
		obj.update(id, newpro);
		response.sendRedirect("display.jsp");
	%>
</body>
</html>