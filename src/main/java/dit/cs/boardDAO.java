/**====================================*
* 작성자 : seohyun
* 작성일 : 2023. 5. 23.
* 파일명 : boardDAO.java
* 프로그램 설명 :
*====================================== **/
package dit.cs;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * @author seohyun
 *
 */
public class boardDAO {
	private Connection getConnection() throws Exception {
		
		InitialContext initCtx = new InitialContext();
		DataSource ds =(DataSource)initCtx.lookup("java:comp/env/jdbc/jspdb");
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
		//데이터베이스에서 테이블에 있는 레코드를 가져오는 메소드
		//1.접근제어자
		//2.반환 데이터타입
		//3.입력 매개변수
		public boardDTO getOne(int bcode) {
	           String sql = "Select * FROM board WHERE bcode = ?";
	           boardDTO dto = null;

	           try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
	              pstmt.setInt(1, bcode);
	              ResultSet rs = pstmt.executeQuery();

	              if (rs.next()) {
	                 bcode = rs.getInt("bcode");
	                 String subject = rs.getString("subject");
	                 String content = rs.getString("content");
	                 String writer = rs.getString("writer");
	                 Date regdate = rs.getDate("regdate");

	                 dto = new boardDTO(bcode, subject, content, writer, regdate);
	              }
	           } catch (Exception e) {
	              // TODO Auto-generated catch block
	              e.printStackTrace();
	           }
	           return dto;
	        }
		public ArrayList<boardDTO> select(){
			
			String sql = "SELECT * FROM board";
			ArrayList<boardDTO> dtos = new ArrayList<boardDTO>();
			
			try (Connection con = getConnection(); 
				 Statement st = con.createStatement();) {

				ResultSet rs = st.executeQuery(sql);
				
				while(rs.next()) {
					int bcode = rs.getInt("bcode");
					String subject = rs.getString("subject");
					String content = rs.getString("content");
					String writer = rs.getString("writer");
					Date regdate = rs.getDate("regdate");
					
					boardDTO dto = new boardDTO(bcode,subject,content,writer,regdate);
					dtos.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dtos;
		}
		public void insertDao(boardDTO dto) {
			String sql = "insert into board (subject,content,writer) values(?,?,?)";
			
			try(Connection con = getConnection();
			    PreparedStatement pstmt = con.prepareStatement(sql); ) {
				
				pstmt.setString(1, dto.getSubject());
				pstmt.setString(2, dto.getContent());
				pstmt.setString(3, dto.getWriter());
				
				pstmt.executeUpdate();
				
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public void updateDao(boardDTO dto) {
			String sql = "update board set subject=?, content=? , writer=? where bcode=? ";
			
			try(Connection con = getConnection();
			    PreparedStatement pstmt = con.prepareStatement(sql); ) {
				
				pstmt.setString(1, dto.getSubject());
				pstmt.setString(2, dto.getContent());
				pstmt.setString(3, dto.getWriter());
				pstmt.setInt(4, dto.getBcode());
				
				
				pstmt.executeUpdate();
				
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		public void delete(boardDTO dto){
			String sql = "DELETE FROM board WHERE bcode=?";
			
			try (Connection con = getConnection(); 
				 PreparedStatement pstmt = con.prepareStatement(sql);) {
				pstmt.setInt(1, dto.getBcode());
				pstmt.executeUpdate();
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}
	}
