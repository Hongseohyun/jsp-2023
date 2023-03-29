<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	여기는 index 파일입니다.<br>
	<%int a=25,b=10; %>
	<%=a+" + "+b+" = "+(a+b) %><br>
	<%=a+" * "+b+" = "+a*b %>
	<hr>
	<%@ include file="date표시.jsp" %>
	<hr>
	<%@ include file="pageDirective실습.jsp" %>
</body>
</html>