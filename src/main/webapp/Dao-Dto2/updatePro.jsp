<%@page import="dit.cs.LoginDAO2"%>
<%@page import="dit.cs.LoginDTO"%>
<%@page import="dit.cs.LoginDAO"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.*"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%	request.setCharacterEncoding("utf-8");
LoginDAO2 dao =new LoginDAO2();
String name = request.getParameter("name");
String id =request.getParameter("id");
String pwd =request.getParameter("pwd");
LoginDTO dto = new LoginDTO(id,name,pwd);
dao.memberFunction(dto,"U");
	%>

	<script>
		let ans = alert("변경되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
	</script>



