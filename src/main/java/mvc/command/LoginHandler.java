package mvc.command;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class LoginHandler implements CommandHandler {

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   System.out.println("핸들러들어왔따");
         String contextPath = request.getContextPath();
         
         System.out.println(contextPath);
         
         String id = request.getParameter("member_id");
         String password = request.getParameter("member_passwd");
         
         // 비밀번호 암호화
         try {
                  MessageDigest md = MessageDigest.getInstance("SHA-256");
                  md.update(password.getBytes());
                  byte[] byteData = md.digest();
                  StringBuilder sb = new StringBuilder();
                  for (byte b : byteData) {
                      sb.append(String.format("%02x", b));
                  }
                  password= sb.toString();
              } catch (NoSuchAlgorithmException e) {
                  throw new RuntimeException(e);
              } // try catch
         
         System.out.println("id : " + id + " / " + "password : " + password);
         
         Connection conn = ConnectionProvider.getConnection();
         OhoraDAO dao = new OhoraDAOImpl(conn);
         int dbUserId;
         
         try {
            
            dbUserId = dao.loginNum(id, password);
            System.out.println("user pk : " + dbUserId);
            
            if ( dbUserId != -1 ) {
               HttpSession session = request.getSession();
               session.setAttribute("userId", dbUserId);
               
               response.sendRedirect( contextPath + "/ohora/oho_main.jsp" );
               // RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/oho_main.jsp");
               // dispatcher.forward(request, response);
               
               return null;
            } else {
               response.sendRedirect( contextPath + "/ohora/login.jsp?fail=true" );
               
               return null;
            } // if
            
         } catch (Exception e) {
            e.printStackTrace();
            System.out.println("로그인핸들러.. 캐치");
         } finally {
            
            if(conn != null) {
               
               try {
                  conn.close();
               } catch (Exception e) {
                  e.printStackTrace();
               } // try catch
               
            } // if
            
         } // try catch finally
            
      return null;
      
   }

} // class