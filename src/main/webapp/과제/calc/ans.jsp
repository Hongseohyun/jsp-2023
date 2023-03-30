<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<link rel="stylesheet" type="text/css" href="calc.css">
</head>
<body>
	<%
				request.setCharacterEncoding("utf-8");
				int x = Integer.parseInt(request.getParameter("x"));
				int y = Integer.parseInt(request.getParameter("y"));
				String operator = request.getParameter("btn");
				
				
		%>
	<h1>간단 계산기</h1>
	<form method="get" action="ans.jsp">
		x: <input type="text" name="x"><br> y: <input type="text"
			name="y"><br> <input name="btn" value="+" type="submit"
			value="+"> <input name="btn" value="-" type="submit"
			value="-"> <input name="btn" value="*" type="submit"
			value="*"> <input name="btn" value="/" type="submit"
			value="/">
	</form>
	<%
	out.println(x + operator + y + "="); 
	switch(operator) {	
					case "+":		
						out.println(x+y);
						break;
					case "-":	
						out.println(x-y); 
						break; 
					case "*":
						out.println(x*y);
						break;
					case "/":
						out.println(x/y);
						break;
					default:
						System.out.println("입력하세요");
				}
				%>
</body>
</html>