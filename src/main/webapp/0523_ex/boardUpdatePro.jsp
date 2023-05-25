<%@page import="dit.cs.boardDTO"%>
<%@page import="dit.cs.boardDAO"%>
<%
/*====================================
작성자 : 2023. 5. 23.
작성일 : seohyun
프로그램 기능 :
=====================================*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("utf-8");
 
 String sub = request.getParameter("subject");
 String con = request.getParameter("content");
 String writer = request.getParameter("writer");
 int bcode = Integer.parseInt(request.getParameter("bcode"));
 
 boardDAO dao = new boardDAO();
 boardDTO dto = new boardDTO();
 
 
 /* dto.boardDto(sub, con, writer); */
 
 
 dto.setSubject(sub);
 dto.setContent(con);
 dto.setWriter(writer);
 dto.setBcode(bcode);
 dao.updateDao(dto);
	
 response.sendRedirect("boardList.jsp");
 %>