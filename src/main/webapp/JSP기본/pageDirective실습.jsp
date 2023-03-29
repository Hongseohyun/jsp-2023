<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.time.*" 
    info="copyright by Seohyun Hong"
    trimDirectiveWhitespaces="True"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 반가워요!</h1>
	<% out.println("오늘의 날짜 : "+ LocalDate.now()+"<br>");
	 	 out.println("지금의 시간 : "+ LocalTime.now()+"<br>");
	%>
	작성자 : <%=getServletInfo() %>
</body>
</html>