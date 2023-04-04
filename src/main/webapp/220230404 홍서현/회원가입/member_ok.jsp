<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Result</title>
		<style>
			.container {
				width: 400px;
				margin: 0 auto;
				background-color: #fff;
				border-radius: 10px;
				padding: 20px;
				box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
			}
			
			h1 {
				text-align: center;
				margin-top: 0;
			}
			
			ul {
				list-style: none;
				padding: 0;
				margin: 0;
			}
			
			label {
				display: inline-block;
				width: 150px;
				font-weight: bold;
			}
			
			li
				{
				display: block;
				width: 100%;
				padding: 10px;
				border: 1px solid #ccc;
				border-radius: 4px;
				box-sizing: border-box;
				margin-bottom: 10px;
			}
</style>
</head>
<body>
        <h1>Registration Result</h1>
    <div class="container">
            <%
            request.setCharacterEncoding("utf-8");
            String name = request.getParameter("name");
            String pwd = request.getParameter("password");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("phone");
            String news = request.getParameter("newsletter");
        %>
        <ul>
            <li><label for="name">Name:</label> <%= name %></li>
            <li><label for="password">Password:</label> <%= pwd %></li>
            <li><label for="gender">Gender:</label> <%= gender %></li>
            <li><label for="phone">Phone:</label> <%= phone %></li>
            <li><label for="newsletter">Subscribe to Newsletter:</label> <%= news %></li>
        </ul>
    </div>
</body>
</html>
