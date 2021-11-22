<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form method="post">
		<div class="form-group">
			<label for="id">Name:</label> <input type="text" class="form-control"
				id="id" placeholder="Enter email" name="email">
		</div>

		<div class="form-group">
			<label for="tel">Email:</label> <input type="text"
				class="form-control" id="tel" placeholder="Enter email"
				name="email">
		</div>

		<button type="submit" class="btn btn-default">Submit</button>
	</form>
</body>
</html>