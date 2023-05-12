<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
String number = request.getParameter("number");

String name = request.getParameter("name");
String grade = request.getParameter("grade");
String select = request.getParameter("select");

//3. 데이터 베이스 연결
Class.forName("org.mariadb.jdbc.Driver");

String url = "jdbc:mariadb://localhost:3306/jspdb";
String user = "seohyun";
String password = "1111";
if (number != "") {
	try (Connection con = DriverManager.getConnection(url, user, password)) {

		String sql = "UPDATE ex01 SET NAME=?, grade=?, subject=? WHERE STU_NUM=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, grade);
		pstmt.setString(3, select);
		pstmt.setString(4, number);
		//SQL 실행
		int i = pstmt.executeUpdate();

		if (i == 1) {
			response.sendRedirect("select.jsp");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>
