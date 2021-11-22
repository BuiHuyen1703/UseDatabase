<%@page import="java.sql.ResultSet"%>
<%@page import="controller.ConnectDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
	border: 1px solid black;
	border-radius: 5px;
}
</style>

</head>
<body>
	<%
	int id= Integer.parseInt(request.getParameter("id"));
	ConnectDB obj = new ConnectDB();
	ResultSet rs = obj.find(id);
	%>
	
	<table style="width: 80%, text-align=:center">
		<tr>
			<th>Ma</th>
			<th>Ten</th>
			<th>So luong</th>
			<th>Don gia</th>
			<th>Thanh tien</th>
			<th>Xoa</th>
		</tr>

		<%
		while (rs.next()) {
		%>
		<tr>
			<td>
				<% out.println(rs.getInt(1));%>
			</td>
			<td>
				<% out.println(rs.getString(2));%>
			</td>
			<td>
				<% out.println(rs.getInt(3));%>
			</td>
			<td>
				<%out.println(rs.getFloat(4));%></td>
			<td>
				<% out.println(rs.getFloat(4) * rs.getInt(3));%>
			</td>
			
			<td><img class="picture" src="../images/image.jsp"> </td>
			
		</tr>
		<%
		
		
		}
		%>
		
		<tr> 
			<td><a href="add.jsp">Them sp</a> </td>
		</tr>
	</table>
</body>
</html>