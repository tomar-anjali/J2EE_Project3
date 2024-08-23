<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>
<body>
	<%
		ResultSet rs=(ResultSet) request.getAttribute("res");
		while(rs.next()){
	%>
		<form action="updatedata" method="post">
			<input type="text" name="id" placeholder="ID" value="<%=rs.getInt(1) %>">
			<input type="text" name="name" placeholder="Name" value="<%=rs.getString(2)%>">
			<input type="text" name="price" placeholder="Price" value="<%=rs.getDouble(3)%>">
			<input type="text" name="brand" placeholder="Brand" value="<%=rs.getString(4)%>">
			<button type="submit">Update</button>
		</form>
	
	
	<% } %>
</body>
</html>