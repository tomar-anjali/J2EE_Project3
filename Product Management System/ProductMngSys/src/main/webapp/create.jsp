<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create page</title>
</head>
<body>
	<h1>Enter Details: -</h1>
	<form action="create" method="post">
	<input type="text" name="id" placeholder="ID">
	<input type="text" name="name" placeholder="Name">
	<input type="text" name="price" placeholder="Price">
	<input type="text" name="brand" placeholder="Brand">
	<button type="submit">Add New Product</button>
	</form>
</body>
</html>