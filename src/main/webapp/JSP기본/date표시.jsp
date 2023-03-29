<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.time.*"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello, World!!</h2>
<!-- 	스크립틀릿 -->
	<%
	out.println("오늘 날짜 : " + LocalDate.now() + "<br>");
	out.println("현재 시간 : " + LocalTime.now() + "<br>");
	%>
<!-- 	expression -->
	현재 날짜 : <%=LocalDate.now() %>
</body>
</html>