<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.*"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="org.apache.catalina.filters.SetCharacterEncodingFilter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>

<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
//1. 한글처리
request.setCharacterEncoding("utf-8");

InitialContext initCtx = new InitialContext();

Context ctx = (Context)initCtx.lookup("java:comp/env");

DataSource ds= (DataSource)ctx.lookup("jdbc/seohyun");

try (Connection con = ds.getConnection()) {

	//4.sql문으로 db에 질의()
	String sql = "select id, pwd from member where id=? and pwd=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pwd);
	ResultSet rs = pstmt.executeQuery();

	if (rs.next()) {
		//6.사용자가 유효한 경우 session객체에 저장
		session.setAttribute("id", id);
		response.sendRedirect("welcome-todo.jsp");
	} else {
		//7. 아닌경우는 자바스크립트로 존재하지않는 사용자입니다라는 메세지 띄우기
%>
<script>
	if(confirm("존재하지않는 사용자입니다. 등록하시겠습니까?")){
		location.href="insertForm.jsp";
	}else{
		history.back();
	}
</script>
<%

}
} catch (Exception e) {
e.printStackTrace();
}
%>

