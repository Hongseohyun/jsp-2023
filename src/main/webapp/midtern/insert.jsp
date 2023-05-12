<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");

String num = request.getParameter("number");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String lang = request.getParameter("lang");

Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3306/jspdb";
String user = "seohyun";
String password = "1111";

try(Connection con = DriverManager.getConnection(url,user,password)){
	String sql = "insert into ex01 values(?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, num);
	pstmt.setString(2, name);
	pstmt.setString(3, grade);
	pstmt.setString(4, lang);

	int i = pstmt.executeUpdate();
	if(i == 1){
		response.sendRedirect("list.jsp");
	}
	
}catch(Exception e){
	e.printStackTrace();
}

%>