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

.picture{
alignment-adjust:central;
width: 100px;
height: 80px;
}
</style>
</head>
<body>
<h1>Danh sach qua 20-10</h1>
<form action="xulyTimkiem.jsp">
	ID: <input type="search" name="id">
	<input type="submit" value="SEARCH">
</form>
	<%
	ConnectDB obj = new ConnectDB();
	ResultSet re = obj.getData();
	float sum=0;
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
		while (re.next()) {
		%>
		<tr>
			<td>
				<% out.println(re.getInt(1));%>
			</td>
			<td>
				<% out.println(re.getString(2));%>
			</td>
			<td>
				<% out.println(re.getInt(3));%>
			</td>
			<td>
				<%out.println(re.getFloat(4));%></td>
			<td>
				<% out.println(re.getFloat(4) * re.getInt(3));%>
			</td>
			<td><a href ="delete.jsp?id=<%=re.getInt("id") %>">Xoa</a></td>
			<td><img class="picture" src="../images/image.png"> </td>
			<td><a href ="update.jsp?id=<%=re.getInt("id") %>">Sua</a></td>
		</tr>
		<%
		
		sum+= re.getFloat(4) * re.getInt(3);
		
		}
		%>
		<tr>
			<td colspan="2">Tong</td>
			<td colspan="3"><%=sum %></td>
		</tr>
		<tr> 
			<td><a href="add.jsp">Them sp</a> </td>
		</tr>
	</table>
</body>
</html>