<%@page import="dit.cs.boardDAO"%>
<%@page import="dit.cs.boardDTO"%>
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

request.setCharacterEncoding("UTF-8");
String Ccode = request.getParameter("id");


int Bcode = Integer.parseInt(Ccode);

boardDTO dto = new boardDTO();
dto.setBcode(Bcode);

boardDAO dao = new boardDAO();
dao.delete(dto);


%>

    <script>
      let ans = alert("삭제되었습니다!");
      
         location.href='boardList.jsp';
      
</script>