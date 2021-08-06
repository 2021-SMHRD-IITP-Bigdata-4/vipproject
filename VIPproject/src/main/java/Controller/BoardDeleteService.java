package Controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.CommentDAO;

@WebServlet("/BoardDeleteService")
public class BoardDeleteService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		
		BoardDAO dao = new BoardDAO();
		CommentDAO dao2 = new CommentDAO();
		
		int cnt2 = dao2.deleteComment(post_num);
		int cnt = dao.deleteOne(post_num);
		
		if ((cnt>0) && (cnt2>0)) {
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
		}
		
		response.sendRedirect("boardMain.jsp");
		
		
		
	}

}
