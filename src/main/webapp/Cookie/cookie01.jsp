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
		String cookieName = "id";
	
	//1. 쿠키 객체 생성 : 속성명은 id, 속성값은 자신의 이름
		Cookie cookie = new Cookie(cookieName, "seohyun");
		
	//2. 쿠키 속성 설정 : 2분간 쿠키가 유효하도록 설정
		cookie.setMaxAge(2*60);
		
	//3. 쿠키를 클라이언트에 전송
		response.addCookie(cookie);
	%>
	
	<%=cookieName %>가 생성되었습니다. <br>
	
	<form action="cookie02.jsp" method="post">
		<input type="submit" value="생성된 쿠키 확인">
	</form>
</body>
</html>