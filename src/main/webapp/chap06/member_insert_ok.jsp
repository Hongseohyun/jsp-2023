<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
	//1. 한글 처리
	request.setCharacterEncoding("utf-8");
	
	//2. 데이터를 받아와 변수에 저장
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//3. jdbc 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	//4. DB 연결 정보 (url, user, password)
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "seohyun";
	String password = "1111";
	
	//5. DB와의 커넥션 생성(DriverManager 객체 사용)
	try(Connection con = DriverManager.getConnection(url, user, password);
			){
		//6. SQL문 작성
		String sql = "insert into member(name, id, pwd) values(?,?,?)";
		
		//7. Preparedstatement 객체 생성
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, pwd);
		
		//8. SQL 실행
		int i = pstmt.executeUpdate();
		if(i==1){
			out.println("입력성공");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	

%>
<br>
이름 : <%=name  %><br>
아이디 : <%=id  %><br>
비밀번호 : <%=pwd  %><br>
