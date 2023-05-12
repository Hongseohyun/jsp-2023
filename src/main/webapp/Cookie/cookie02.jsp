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
		//1. 사용자 컴퓨터에 저장된 쿠키 배열 가져오기
		Cookie[] cookies = request.getCookies();

		//2. 쿠키배열이 null이 아니면 쿠키에서 id속성이 있는지 확인하여 화면에 쿠키 속성명과 속성값을 출력
			
		if(cookies!=null){
			for(Cookie cookie:cookies){
				String	id = cookie.getName();
				String value = cookie.getValue(); %>
				쿠키의 속성명 :<%=cookie.getName() %><br>
				쿠키의 값 :<%=cookie.getValue() %><br><% 
			} 
		}
	%>
	

</body>
</html>