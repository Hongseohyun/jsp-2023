/**====================================*
* 작성자 : seohyun
* 작성일 : 2023. 5. 23.
* 파일명 : boardDTO.java
* 프로그램 설명 :
*====================================== **/
package dit.cs;

import java.sql.Date;

/**
 * @author seohyun
 *
 */
public class boardDTO {
	
	private int bcode;
	
	private String subject;
	private String content;
	private String writer;
	private Date regdate;

	

	public int getBcode() {
		return bcode;
	}
	public void setBcode(int bcode) {
		this.bcode = bcode;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public boardDTO() {}
	/**
	 * @param regdate2 
	 * @param bcode 
	 * @param bcode2
	 * @param subject2
	 * @param content2
	 * @param writer2
	 * @param regdate2
	 */
	public boardDTO(int bcode, String subject, String content, String writer, Date regdate) {
		this.subject = subject;
		this.content = content;
		this.writer = writer;
		this.bcode = bcode;
		this.regdate = regdate;

	}

		
}
