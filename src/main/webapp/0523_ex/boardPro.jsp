<%@page import="dit.cs.boardDTO"%>
<%@page import="dit.cs.boardDAO"%>
<%@page import="javax.websocket.SendResult"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 request.setCharacterEncoding("utf-8");
 
 String sub = request.getParameter("SUBJECT");
 String con = request.getParameter("CONTENT");
 String writer = request.getParameter("WRITER");
 
 boardDAO dao = new boardDAO();
 boardDTO dto = new boardDTO();
 
 
 /* dto.boardDto(sub, con, writer); */
 
 
 dto.setSubject(sub);
 dto.setContent(con);
 dto.setWriter(writer);
 dao.insertDao(dto);
	
 response.sendRedirect("boardList.jsp");
/* dto.boardDto(request.getParameter("SUBJECT"),request.getParameter("CONTENT"),request.getParameter("WRITER")); */
 %>
