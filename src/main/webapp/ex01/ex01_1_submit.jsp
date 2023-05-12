<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 1. 인코딩  -->
<% 
//1. 인코딩
request.setCharacterEncoding("utf-8");

//2.가져올것들 변수에 담기

String num = request.getParameter("number");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String subject = request.getParameter("subject");

//3. 데이터베이스 연결
Class.forName("org.mariadb.jdbc.Driver");

//3-1. 내 데이터베이스 정보
String url = "jdbc:mariadb://localhost:3306/jspdb";
String user = "seohyun";
String password = "1111";

//4. 커넥션 객체 생성 
try(Connection con = DriverManager.getConnection(url, user, password)){
	
	String sql = "insert into ex01(stu_num, name, grade, subject) values (?,?,?,?)";

	
//5. pstmt 생성
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, num);
	pstmt.setString(2, name);
	pstmt.setString(3, grade);
	pstmt.setString(4, subject);
	




//6. 실행, 연결 성공 확인
	int i = pstmt.executeUpdate();
	
	if(i == 1){
		out.println("connection successful");
	}
}catch(Exception e){
	e.printStackTrace();
}
Connection con = DriverManager.getConnection(url, user, password);
String sql2 = "select * from ex01";
PreparedStatement pstmt2 = con.prepareStatement(sql2);
ResultSet rs = pstmt2.executeQuery();
%>
<table border="1">
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>학년</td>
			<td>선택과목</td>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("stu_num")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("grade")%></td>
			<td><%=rs.getString("subject")%></td>
		</tr>
<%
		}
%>
</table>
</body>
</html>