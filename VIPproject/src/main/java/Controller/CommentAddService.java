package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommentDAO;
import Model.CommentDTO;
import Model.VipMemberDTO;

@WebServlet("/CommentAddService")
public class CommentAddService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");
				
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		String user_id = info.getUser_id();
		String display_name = info.getDisplay_name();
		String reply_memo = request.getParameter("comment");
		
		CommentDTO dto = new CommentDTO(post_num, user_id, display_name, reply_memo);
		CommentDAO dao = new CommentDAO();
		
		int cnt = dao.addComment(dto);
		
		if (cnt >0) {
			System.out.println("댓글 작성 성공");
		} else {
			System.out.println("댓글 작성 실패");
		}
		
		out.write(cnt);
		
		
		
	}

}
