<%
/*====================================
작성자 : 2023. 5. 12.
작성일 : seohyun
프로그램 기능 :
=====================================*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>게시판</title>
<link rel="stylesheet" href="./write.css">
  </head>
  <body>
    <h1>글쓰기</h1>
    <form action="board_insert.jsp" method="post">
      <input name=title type="text" placeholder="제목">
      <input name=author_id type="text" placeholder="<%=session.getAttribute("name")%>" readonly>
      <textarea name=content placeholder="내용"></textarea>
      <button type="submit">글쓰기</button>
    </form>
  </body>
</html>

   