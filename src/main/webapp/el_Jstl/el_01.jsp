<%
/*====================================
작성자 : 2023. 5. 24.
작성일 : seohyun
프로그램 기능 :
=====================================*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = "gildong";
	pageContext.setAttribute("id", id);
	String list[] = {"sun","mercury", "venus", "earth"}; 
	pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>EL 연습중</h2>
	<li>id : ${id}</li>
	<li> ${"오늘 요일은?"}</li>
	<li> ${'화요일'}</li>
	<li> ${25-11}</li>
	<li> ${5>3}</li>
	<li> ${header.host}</li>
	<li> ${header.connection}</li>
	<li>파라메터 name : ${param.name}</li>
	<li>list : ${list[0] }, ${list[1] }, ${list[2] }, ${list[3] }</li>
	<li>${empty param.name }</li>
	<li>${empty param.name? "empty":param.name }</li>
	
	
	<h2>JSTL 연습중</h2>
	<c:set var="id" value="gildong"></c:set>
	${id }
	<c:out value="${id }"></c:out> 
</body>
</html>