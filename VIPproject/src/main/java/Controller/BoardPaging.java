package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardPaging")
public class BoardPaging extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		int pageNum = 1;
		if(request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));		
		}
											
		if (pageNum != 0) {
			System.out.println("페이징 성공");
		} else {
			System.out.println("페이징 실패");
		}
		
		response.sendRedirect("boardMain.jsp?pageNum="+pageNum);
		
		
	}

}
