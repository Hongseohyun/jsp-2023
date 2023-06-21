<%
/*====================================
작성자 : 2023. 5. 31.
작성일 : seohyun
프로그램 기능 :
=====================================*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="gildong"/>
<c:set var="income" value="2000000"></c:set>
<c:out value="${id}" />의 수입은
<c:out value="${income}"/>입니다.<br>

<c:set var= "score" value="${param.score}"/>
<c:if test="${empty score}">
 		<p>매개변수값이 비어있어요</p>
</c:if>
<c:if test="${!empty score}">
		스코어는<c:out value="${score }"/>
</c:if><br><br>


<c:set var="loginid" value="gildong"/>
<c:set var="name" value="홍길동"/>
<c:if test="${loginid eq'gildong' && name eq '홍길동'}">
		아이디는 <c:out value="${loginid}"/>이고 이름은 <c:out value="${name}"/>
</c:if><br>

<c:choose>
	<c:when test="${empty param.name }">	
			<form action="test1.jsp" method="get">
				이름: <input type="text" name="name">
				<input type="submit" value="확인"><br>
			</form>
	</c:when>
	<c:when test="${param.name == 'admin' }">	
			관리자 작업<br>
	</c:when>
		<c:when test="${param.name == 'admin' }">	
			사용자 작업<br>
	</c:when>
	<c:otherwise>
			기타 작업<br>
	</c:otherwise>
</c:choose>
<%-- 
<%String list[]= {"홍길동", "임꺽정", "이순신"};
pageContext.setAttribute("list", list);%> --%>

<c:set var="list">홍길동, 임꺽정, 이순신</c:set>

<c:forEach var="i" items="${list}">
	${i}<br>
</c:forEach>