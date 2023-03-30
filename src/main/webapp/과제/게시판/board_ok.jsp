<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Board Ok</title>
	<style>
		body {
			background-color: #F5F5F5;
		}
		.container {
			margin: 50px auto;
			max-width: 1000px;
			background-color: #FFFFFF;
			padding: 20px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			border-radius: 10px;
		}

		h1 {
			text-align: center;
	    display: block;
	    font-size: 2em;
	    margin-block-start: 0.67em;
	    margin-block-end: 0.67em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
		}

		table {
			width: 100%;
			border-collapse: collapse;
		}
		th, td {
			padding: 10px;
			border: 1px solid #CCCCCC;
		}
		th {
			background-color: #F5F5F5;
			font-weight: bold;
		}
		td:nth-child(1), th:nth-child(1) {
			width: 10%;
		}
		td:nth-child(2), th:nth-child(2) {
			width: 20%;
		}
		td:nth-child(3), th:nth-child(3) {
			width: 50%;
		}
		td:nth-child(4), th:nth-child(4) {
			width: 20%;
		}
		.btn-container {
			margin-top: 20px;
			text-align: center;
		}
		button {
			padding: 10px;
			background-color: #337AB7;
			color: #FFFFFF;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}
		button:hover {
			background-color: #286090;
		}
	</style>
</head>
<body>
		<h1>작성한 글 상세 페이지</h1>
	<div class="container">
		<%
			request.setCharacterEncoding("utf-8");
			String title = request.getParameter("title");
			String writer = request.getParameter("writer");
			String content = request.getParameter("content");
			java.util.Date date = new java.util.Date();
			java.sql.Timestamp timestamp = new java.sql.Timestamp(date.getTime());
		%>
		<table class="board-table">
			<tr>
				<th>제목</th>
				<td><%= title %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%= writer %></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><%= content %></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%= date %></td>
			</tr>
		</table>
		<div class="btn-container">
			<button onclick="history.back()">Back</button>
		</div>
	</div>
</body>

</html>
