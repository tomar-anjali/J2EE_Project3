<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page </title>
<style type="text/css">
	*{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            text-align: center;
            font-family: cursive;
            background: transparent;
            color: white;
            
        }
        table {
            border-collapse: collapse;
            margin:5rem auto;
            background: linear-gradient(teal,white,black);
        }
        th,td{
           
            padding: 0.5rem;
        }
        th{
        	 border-bottom: 2px solid lightgrey;
        }
       
         #crt{
         	position: absolute;
            background-color: teal;
            color: white;
            border: none;
            outline: none;
            padding: 0.7rem;
            cursor: pointer;
            border-radius:0 5rem;
            padding: 1rem;
         	
            right: 4rem;
            bottom: 3rem;
        }
    
</style>

</head>
<body>
	<a href="create.jsp"><button id="crt">Add New Product</button></a>
	<table>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Price</th>
		<th>Brand</th>
		<th colspan="2">Action</th>
	</tr>
	
	<% ResultSet rs=(ResultSet) request.getAttribute("res"); %>
	<%	while(rs.next()){	%>
	<tr>
		<td><%=rs.getInt(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getDouble(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><a href="update?id=<%=rs.getInt(1)%>"><button style="border: none; cursor: pointer;" >Update</button></a></td>
		<td><a href="delete?id=<%=rs.getInt(1)%>"><button style="border: none; cursor: pointer;">Delete</button></a></td>
	</tr>
	<%
		}
	%>
	</table>
</body>
</html>