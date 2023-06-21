<%@page import="dit.cs.LoginDTO"%>
<%@page import="dit.cs.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	LoginDTO dto = new LoginDTO(id, name, pwd);
	LoginDAO dao = new LoginDAO();
	dao.insertLogin(dto);
	
	response.sendRedirect("list.jsp");
%>

