<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="border: 1px solid black">
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>학년</td>
			<td>과목</td>
		</tr>

		<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "seohyun";
	String password = "1111";
	
	Connection con = DriverManager.getConnection(url,user,password);
	
	Statement stmt = con.createStatement();
	String sql = "select * from ex01";
	ResultSet rs = stmt.executeQuery(sql);	
	
	while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString("stu_num") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("grade") %></td>
			<td><%=rs.getString("subject") %></td>
			<td><a href="updateForm.jsp?number=<%=rs.getString("stu_num")%>&name=<%=rs.getString("name") %> ">수정</a></td>
			<td><a href="delete.jsp?number=<%=rs.getString("stu_num") %>">삭제</a></td>
		</tr>

	<%
			}
		con.close();
		rs.close();
		stmt.close();
		
		%>
	</table>


</body>
</html>