package ohora.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserDTO {
	private int user_id; //회원번호
	private int mem_id; //회원등급
	private int auth_id; //회원권한 (1 관리 2 회원)
	private String user_login_id; 
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_tel;
	private Date user_birth;
	private int user_point;
	private char user_smsAgree;
	private Date user_joindate;
	private char user_emailAgree;
	
}
