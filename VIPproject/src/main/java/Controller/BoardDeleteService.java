package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;

@WebServlet("/BoardDeleteService")
public class BoardDeleteService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String post_num = request.getParameter("post_num");
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.deleteOne(post_num);
		
		if (cnt>0) {
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
		}
		
		response.sendRedirect("boardMain.jsp");
		
	}

}
