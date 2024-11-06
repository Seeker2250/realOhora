package mvc.command;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.DeptVO;
import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class SignupHandler implements CommandHandler {

	
	char smsAgree;
	char emailAgree;
	String user_login_id;
	String passwd;
	String name;
	String email;
	String phone;
	
	String bYear;
	String bMonth;
	String bDay;
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("SignUp Handler...");

		try {
			this.smsAgree = request.getParameter("smsAgree").charAt(0);			
		} catch (Exception e) {
			this.smsAgree = 'N';
			System.out.println("smsA");
		}

		try {
			this.emailAgree = request.getParameter("emailAgree").charAt(0);			
		} catch (Exception e) {
			this.emailAgree = 'N';
			
		}
		
		
		this.user_login_id = request.getParameter("user_login_id");		
		
		this.passwd = request.getParameter("passwd");			
	     
		try {
	            MessageDigest md = MessageDigest.getInstance("SHA-256");
	            md.update(passwd.getBytes());
	            byte[] byteData = md.digest();
	            StringBuilder sb = new StringBuilder();
	            for (byte b : byteData) {
	                sb.append(String.format("%02x", b));
	            }
	            passwd= sb.toString();
	        } catch (NoSuchAlgorithmException e) {
	            throw new RuntimeException(e);
	        }
		
		
		
		
		this.name = request.getParameter("name");		
		
		
		this.email = request.getParameter("email");		
		
		
		this.phone = request.getParameter("phone");		
		
		
		
		this.bYear = request.getParameter("birth-year");
		this.bMonth = request.getParameter("birth-month");
		this.bDay = request.getParameter("birth-day");
		
		System.out.println(bDay);
		
		//생일 세칸짜리 취합해서 형식 Date로 바꾸기
		String StrbirthDay = bYear + "-" + bMonth + "-" + bDay; 
	    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	    Date user_birthday = format.parse(StrbirthDay);

		
	    //가입일자
		Date joindate = new Date();
		System.out.println(joindate);
		
//		System.out.println(smsAgree);
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);

		UserDTO dto = new UserDTO();
			dto.setUser_id(0);
			dto.setAuth_id(2);
			dto.setMem_id(1);
			dto.setUser_login_id(user_login_id);
			dto.setUser_email(email);
			dto.setUser_birth(user_birthday);
			dto.setUser_emailAgree(emailAgree);
			dto.setUser_joindate(joindate);
			dto.setUser_name(name);
			dto.setUser_password(passwd);
			dto.setUser_point(0);
			dto.setUser_smsAgree(smsAgree);
			dto.setUser_tel(phone);
			
		try {
			int rowCount = dao.insert(conn, dto);
			
			if ( rowCount == 1) System.out.println(" 가입완료 ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}

		// 완료 페이지 넘길것..
		request.setAttribute("user_login_id", user_login_id);
		request.setAttribute("email", email);
		request.setAttribute("name", name);
		
		
		
		return "/ohora/join_complete.jsp";
	}

}
