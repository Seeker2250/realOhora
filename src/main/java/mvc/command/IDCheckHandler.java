package mvc.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class IDCheckHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("중복체크 진입 완료");
		
		String inputType = trim(request.getParameter("type") );
		String inputVal= trim(request.getParameter("val") ); 
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		UserDTO dto = new UserDTO();
		
		
		if ( inputType == "user_login_id") {
			dto.setUser_login_id(inputVal);
			
		} else if ( inputType == "email") {
			dto.setUser_email(inputVal);
			
		} else { //폰
			dto.setUser_tel(inputVal);
			
		}
		
		try {
			int rowCount = dao.jungbokCK(conn, dto);
			
			if ( rowCount == 0) System.out.println(" 중복 값 없음 ");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(" 중복 값 있음 ");
		} finally {
			conn.close();
		}
		
		
		
		
		return null;
	}
	
	 
	
	private String trim(String str) {
		return str == null ? null : str.trim();
	}
	
}
