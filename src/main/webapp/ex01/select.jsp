<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
section {
	width: 500px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 1px solid black;
	padding: 30px 70px;
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
}

button {
	margin: 30px;
}
</style>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String number = request.getParameter("number");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String select = request.getParameter("select");
	
	Class.forName("org.mariadb.jdbc.Driver");

	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "seohyun";
	String password = "1111";
	//3. 정보 주고 드라이버매니저한테 연결하라고 시킴
	Connection con = DriverManager.getConnection(url, user, password);

	//4. 커넥션한테 문장통 만들라고 시킴 stmt
	Statement stmt = con.createStatement();

	//5. sql
	String sql = "select * from ex01";

	//6. rs
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<section>
		<h2>조회</h2>
		<table border="1px solid black;">
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
				<td><a href="one.jsp?number=<%=rs.getString("stu_num")%>"><%=rs.getString("stu_num")%></a></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("grade")%></td>
				<td><%=rs.getString("subject")%></td>
				<td><a href="updateForm.jsp?number=<%=rs.getString("stu_num")%>">수정</a></td>
				<td><a href="delete.jsp?number=<%=rs.getString("stu_num")%>">삭제</a></td>
			</tr>
			<%
			}

			//8. 닫아
			con.close();
			rs.close();
			stmt.close();
			%>
		</table>
		<button onclick="location.href='index.jsp'">home</button>
	</section>
</body>
</html>



