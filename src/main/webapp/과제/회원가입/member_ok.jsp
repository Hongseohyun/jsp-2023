<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String path = request.getParameter("path");
		String add = request.getParameter("add");
		String memo = request.getParameter("memo");
		out.println(id);
		out.println(pwd);
		out.println(gender);
		out.println(path);
		out.println(add);
		out.println(memo);
		
%>