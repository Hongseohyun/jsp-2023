<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% 
//1. 한글로
request.setCharacterEncoding("utf-8");
//2. 변수에 데이터 저장
String name = request.getParameter("name");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
//3.드라이브 로드
Class.forName("org.mariadb.jdbc.Driver");
//4. 내db정보
String url = "jdbc:mariadb://localhost:3306/jspdb";
String user = "seohyun";
String password = "1111";

//5. 커넥션
try(Connection con = DriverManager.getConnection(url,user,password)){
	String sql = "insert into member(name, id, pwd) values(?,?,?)";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	pstmt.setString(3, pwd);
	
	int i = pstmt.executeUpdate();
	if(i==1){
		out.println("연결 성공");
	}
	
} catch(Exception e){
	e.printStackTrace();
}
%>