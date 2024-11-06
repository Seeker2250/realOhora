package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.PagingVO;
import ohora.domain.ProductDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class ListHandler implements CommandHandler{
	
	int currentPage = 1;				// 현재 페이지 번호
	int numberPerPage = 12;				// 한 페이지에 출력할 게시글 수
	int numberOfPageBlock = 10;			// [1] 2 3 4 5 6 7 8 9 10 >
	int totalRecords = 0;				// 총 레코드 수
	int totalPages = 0;					// 총 페이지 수
	int categoryNumber = 0;

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("List Handler..");
		
		try {
			this.currentPage = Integer.parseInt(request.getParameter("currentPage"));			
		} catch (Exception e) {
			this.currentPage = 1;
		}
		
		try {
			this.categoryNumber = Integer.parseInt(request.getParameter("cate_no"));		
		} catch (Exception e) {
			this.categoryNumber = 0;
		}
		
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		ArrayList<ProductDTO> list = null;
		
		//TODO : paging
		PagingVO pvo = null;
		
		try {
			list = dao.select(this.currentPage, this.numberPerPage);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		
		request.setAttribute("list", list);
		String path = "/ohora/prd-nail-page.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		
		return "/ohora/prd-nail-page.jsp";
	}

}
