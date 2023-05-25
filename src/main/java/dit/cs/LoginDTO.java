/**====================================*
* 작성자 : seohyun  
* 작성일 : 2023. 5. 10.
* 파일명 : LoginDto.java
* 프로그램 설명 :
* 		-DB의 login 테이블의 데이터를 처리하기위한 클래스
* 		-데이터베이스에서 검색해온 데이터를 넣어서 전달
*====================================== **/
package dit.cs;



public class LoginDTO {
	
	//기본 생성자
	
	public LoginDTO() {}
	
	// 필드가 있는 생성자
	// 필드가 있는 생성자를 사용하기 위해서는 기본생성자를 반드시 명시해야함
	public LoginDTO(String id, String name, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	//property
	private String id;
	private String name;
	private String pwd;
	
	//setters and getters
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
