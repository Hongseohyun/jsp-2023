<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Results Page</title>  
	<style>
		body {
		    font-family: Arial, sans-serif;
		    font-size: 16px;
		    line-height: 1.5;
		    margin: 0;
		    padding: 0;
		    background-color: #f5f5f5;
		}
		
		h1 {
		    font-size: 24px;
		    font-weight: bold;
		    margin-top: 20px;
		    margin-bottom: 10px;
		    text-align: center;
		    color: #333333;
		}
		
		h2 {
		    font-size: 20px;
		    font-weight: bold;
		    text-align: center;
		    margin-top: 30px;
		}
		
		table {
		    margin: 20px auto;
		    border-collapse: collapse;
		    border: 1px solid #cccccc;
		}
		
		table th, table td {
		    padding: 8px;
		    border: 1px solid #cccccc;
		    text-align: right;
		}
		
		table th {
		    background-color: #333333;
		    color: #ffffff;
		}
	</style>
</head>
<body>
	<h2>Results Page</h2>
	<table>
		<tr>
			<th>Name</th>
			<th>Korean</th>
			<th>English</th>
			<th>Math</th>
			<th>Sum</th>
			<th>Average</th>
		</tr>
		<tr>
			<td><%= request.getParameter("ireom") %></td>
			<td><%= request.getParameter("kor") %></td>
			<td><%= request.getParameter("eng") %></td>
			<td><%= request.getParameter("math") %></td>
			<td><%= Integer.parseInt(request.getParameter("kor")) + Integer.parseInt(request.getParameter("eng")) + Integer.parseInt(request.getParameter("math")) %></td>
			<td><%= String.format("%.2f", ((Float.parseFloat(request.getParameter("kor")) + Float.parseFloat(request.getParameter("eng")) + Float.parseFloat(request.getParameter("math"))) / 3)) %></td>
		</tr>
	</table>
</body>   
</html>