<%@page import="dit.cs.LoginDTO"%>
<%@page import="dit.cs.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
    
<%	request.setCharacterEncoding("utf-8");

LoginDAO dao =new LoginDAO();
String name = request.getParameter("name");
String id =request.getParameter("id");
String pwd =request.getParameter("pwd");
LoginDTO dto = new LoginDTO(id,name,pwd);
dao.delete(dto);
%>
	
<script>
		let ans = alert("삭제되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
</script>


