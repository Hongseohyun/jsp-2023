<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String number = request.getParameter("number");
String name = request.getParameter("name");
%>
	<form action="update.jsp" method="post">
		학번 : <input type="text" name="number" value="<%=number%>" readonly="readonly">
		이름 : <input type="text" name="name" value="<%=name%>" readonly="readonly" >
		학년 :  <input type="radio" name="grade" value="1학년" >1학년
					 <input type="radio" name="grade" value="2학년" >2학년
		과목 : <select name="lang">
						<option value="a">a</option>
						<option value="b">b</option>
						<option value="c">c</option>
					</select>
					<button type="submit">가입</button>
	</form>
</body>
</html>