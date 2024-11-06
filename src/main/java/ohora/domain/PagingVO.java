package ohora.domain;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PagingVO {
	
	public int currentPage = 1;
	public int start;
	public int end;
	public boolean prev;
	public boolean next;
	
	public int numberPerPage = 10;
	
	public PagingVO(int currentPage, int numberPerPage, int numberOfPageBlock) throws NamingException, SQLException {
		
		this.currentPage = currentPage;
		this.numberPerPage = numberPerPage;
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		
		int totalPages;
		try {
			totalPages = dao.getTotalPages(numberPerPage);
			
			start = (currentPage-1)/numberOfPageBlock * numberOfPageBlock + 1;
			end = start + numberOfPageBlock - 1;
			if (end > totalPages) end = totalPages;
						
			if (start != 1) this.prev = true;
			if (end != totalPages) this.next = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public PagingVO(int currentPage, int numberPerPage, int numberOfPageBlock
			, String searchCondition,String searchWord) throws NamingException, SQLException {
		this.currentPage = currentPage;
		this.numberPerPage = numberPerPage;
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		try {
			int totalPages = dao.getTotalPages(numberPerPage
					, searchCondition,searchWord);
			
			start = (currentPage-1)/numberOfPageBlock*numberOfPageBlock+1;
			end = start + numberOfPageBlock - 1;			
			if( end > totalPages) end = totalPages;
			
			if( start != 1) this.prev = true;			
			if( end != totalPages) this.next = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}

}
