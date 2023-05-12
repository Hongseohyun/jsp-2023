<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//1.드라이버 이름
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. 내 db 정보 
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "seohyun";
	String password = "1111";
	
	//3. 정보 주고 드라이버매니저한테 연결하라고 시킴
	Connection con = DriverManager.getConnection(url, user, password);
	
	//4. 커넥션한테 문장통 만들라고 시킴 stmt
	Statement stmt = con.createStatement();
	
	//5. sql
	String sql ="select * from member";
	
	//6. rs
	ResultSet rs = stmt.executeQuery(sql);
	
	//7. 하나씩 꺼내
	while(rs.next()){
		out.println(rs.getString("name"));
		out.println(rs.getString("id"));
	}
	//8. 닫아
	con.close();
	rs.close();
	stmt.close();

	
%>
	
</body>
</html>