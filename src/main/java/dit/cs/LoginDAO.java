/**====================================*
* 작성자 : seohyun 
* 작성일 : 2023. 5. 10.
* 파일명 : LoginDAO.java
* 프로그램 설명 :
* 		-login 테이블에 접근하여 CRUD 기능 처리
*====================================== **/
package dit.cs;

import java.sql.*;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LoginDAO {

	//DBCP로 데이터베이스에 접근하여 Connection얻어오는 메소드
	// 1. 접근제어자 public or private?
	// 2. 반환 데이터타입
	// 3. 입력 매개변수의 유무와 타입
	private Connection getConnection() throws Exception {
		
		InitialContext initCtx = new InitialContext();
		DataSource ds =(DataSource)initCtx.lookup("java:comp/env/jdbc/seohyun");
		Connection con = ds.getConnection();
		return con;
	}
	
	//Form에서 가져온 데이터를 데이터베이스의 멤버테이블에 저장
	public void insertLogin(LoginDTO dto) {
		
		String sql = "insert into member values(?,?,?)";
		 
		try(Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPwd());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
