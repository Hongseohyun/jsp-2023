<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--1. import sql  -->
<%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>DB 연결 테스트</title>
</head>
<body>

<%
	// 2. jdbc 드라이버 등록
	Class.forName("org.mariadb.jdbc.Driver");

	// 3.1. DB 연결 정보
	String url ="jdbc:mariadb://localhost:3306/jspdb";
	String user ="seohyun";
	String password ="1111";
	
	// 3.2. jdbc 드라이버가 conection 생성
	Connection con = DriverManager.getConnection(url, user, password);
	
	/* out.println("커넥션 연결 성공"); */
	
	// 3.3 statement 객체 생성
	Statement stmt = con.createStatement();
	
	// 4. 쿼리문 작성
	String sql = "SELECT * FROM MEMBER;";
	
	// 5. 쿼리문 실행, resultset 객체에 저장
	ResultSet rs = stmt.executeQuery(sql);

	// 6.커서를 움직여서 resultset을 false(end file) 일때까지 하나씩 가져옴, 출력
	while (rs.next()){
	     out.println(rs.getString("name"));
	     out.println(rs.getString("id"));
	}
	
	// 7. 수동으로 닫기 (자동으로 닫는법도 있음)
	rs.close();
	stmt.close();
	con.close();

%>
	
</body>
</html>