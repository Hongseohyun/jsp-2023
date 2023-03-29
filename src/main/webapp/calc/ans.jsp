<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8");
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		String operator = request.getParameter("btn");
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
