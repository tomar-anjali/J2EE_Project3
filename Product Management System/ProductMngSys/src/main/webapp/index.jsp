<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Landing page</title>

<style type="text/css">
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: cursive;

        }
        div{
            height: 30vh;
            width: 30%;
            border-radius: 0 5rem;
            margin: 10rem auto;
            position: relative;
            background: linear-gradient(teal,white,black);
            box-shadow: 0 0 10rem 3rem skyblue;
        }
        button{
            position: absolute;
            color: white;
            border: none;
            outline: none;
            padding: 0.7rem;
            cursor: pointer;
            border-radius: 5rem 0;
            padding: 1rem;
        }
        #crt{
            left: 4rem;
            top: 3rem;
            background-color: black;
        }
        #dlt{
            right: 4rem;
            bottom: 3rem;
            background-color: teal;
        }
    </style>

</head>
<body>
	<div>
        <a href="create.jsp"><button id="crt">Add New Product</button></a>
        <a href="all"><button id="dlt">View all Products</button></a>
    </div>
</body>
</html>