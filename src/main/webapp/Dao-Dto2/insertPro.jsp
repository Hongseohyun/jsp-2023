<%@page import="dit.cs.LoginDAO2"%>
<%@page import="dit.cs.LoginDTO"%>
<%@page import="dit.cs.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	LoginDTO dto = new LoginDTO(id, name, pwd);
	LoginDAO2 dao = new LoginDAO2();
	dao.memberFunction(dto,"I");
	
	response.sendRedirect("list.jsp");
%>

