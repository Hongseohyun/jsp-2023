/**====================================*
* 작성자 : seohyun 
* 작성일 : 2023. 5. 10.
* 파일명 : LoginDAO.java
* 프로그램 설명 :
* 		-insertlogin(): 테이블에 접근하여 CRUD 기능 처리
* 		-list():member 테이블의 데이터를 가져옴
* 		-getOne(): 특정 레코드만 검색하여 가져옴
*====================================== **/
package dit.cs;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LoginDAO2 {

	//DBCP로 데이터베이스에 접근하여 Connection얻어오는 메소드
	// 1. 접근제어자 public or private?
	// 2. 반환 데이터타입
	// 3. 입력 매개변수의 유무와 타입
	private Connection getConnection() throws Exception {
		
		InitialContext initCtx = new InitialContext();
		DataSource ds =(DataSource)initCtx.lookup("java:comp/env/jdbc/jspdb");
		Connection con = ds.getConnection();
		return con;
	}
	

	//데이터베이스에서 테이블에 있는 레코드를 가져오는 메소드
	//1.접근제어자
	//2.반환 데이터타입
	//3.입력 매개변수
	public ArrayList<LoginDTO> list(){
		
		String sql = "SELECT * FROM member";
		ArrayList<LoginDTO> dtos = new ArrayList<LoginDTO>();
		
		try (Connection con = getConnection(); 
			 Statement st = con.createStatement();) {

			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String pwd = rs.getString("pwd");
				
				LoginDTO dto = new LoginDTO(id,name,pwd);
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	public LoginDTO getOne(String id){
		String sql = "SELECT * FROM member where id=?";
		LoginDTO dto = new LoginDTO();
		
		try (Connection con = getConnection(); 
			 PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String name = rs.getString("name");
				String pwd = rs.getString("pwd");
				
				dto = new LoginDTO(id,name,pwd);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
		
	}
	   public void memberFunction(LoginDTO dto, String keyword) {
		      PreparedStatement pstmt = null;
		      
		      try(Connection con = getConnection()){   
		         //I = 회원가입
		         if(keyword.equals("I")) {
		            String sql = "insert into member values(?,?,?)";
		               pstmt = con.prepareStatement(sql);
		               pstmt.setString(1, dto.getId());
		               pstmt.setString(2, dto.getName());
		               pstmt.setString(3, dto.getPwd());
		         }
		                  
		         //U = 정보수정
		         else if(keyword.equals("U")) {
		            String sql = "Update member SET name = ?, pwd = ? WHERE id = ?";
		               pstmt = con.prepareStatement(sql);
		               pstmt.setString(1, dto.getName());
		               pstmt.setString(2, dto.getPwd());
		               pstmt.setString(3, dto.getId());
		         }
		         
		         //D = 회원탈퇴
		         else if(keyword.equals("D")) {
		            String sql = "DELETE FROM member WHERE ID = ?";
		            pstmt = con.prepareStatement(sql);
		            pstmt.setString(1, dto.getId());
		         }
		         pstmt.executeUpdate();
		         
		         
		      
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         try {
		            if(pstmt!=null) pstmt.close();
		         } catch (SQLException e) {
		            e.printStackTrace();
		         }
		      }
		   }

		
		
	}

