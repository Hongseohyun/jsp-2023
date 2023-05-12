<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.*"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>dbcp test : seohyun</title>
</head>
<body>
<%
	InitialContext initCtx = new InitialContext();

	Context ctx = (Context)initCtx.lookup("java:comp/env");
	
	DataSource ds= (DataSource)ctx.lookup("jdbc/seohyun");
	
	Connection con = ds.getConnection();
	
	out.println("연결성공");
	
	String sql = "select * from member";
	Statement stmt = con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		String id = rs.getString("id");
		String name =rs.getString("name");
		String password =rs.getString("pwd");

%>
<%=id %>
<%=name %>
<%=password %>
<% 
	}
	rs.close();
	stmt.close();
	con.close();%>


</body>
</html>