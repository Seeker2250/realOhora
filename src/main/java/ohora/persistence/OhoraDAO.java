package ohora.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import ohora.domain.DeptVO;
import ohora.domain.ProductDTO;
import ohora.domain.UserDTO;

public interface OhoraDAO {
	ArrayList<DeptVO> selectTest() throws SQLException;
	
	ArrayList<ProductDTO> select(int currentPage, int numberPerPage) throws SQLException;
	
	// 1-3. 총 레코드 수
	int getTotalRecords() throws SQLException;
	
	int getTotalRecords(int categoryNumber) throws SQLException;
	
	int getTotalRecords(String searchCondition, String searchWord) throws SQLException;
	// 1-4. 총 페이지 수
	int getTotalPages(int numberPerPage) throws SQLException;
	// 검색시 총페이지
	int getTotalPages(int numberPerPage, String searchCondition, String searchWord) throws SQLException;
	
	
	//회원 가입

	int insert(Connection conn, UserDTO dto) throws SQLException;

	//아이디 이메일 폰번호 중복체크
	int jungbokCK( Connection conn, UserDTO dto ) throws SQLException;
	
	
	//로그인
	int loginNum(String id, String password) throws SQLException;
	
}
