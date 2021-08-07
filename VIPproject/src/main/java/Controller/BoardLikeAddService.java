package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.LikeDAO;
import Model.LikeDTO;
import Model.VipMemberDTO;

@WebServlet("/BoardLikeAddService")
public class BoardLikeAddService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");

		int cnt = 0;
		
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		int like = Integer.parseInt(request.getParameter("like"));
		int hate = Integer.parseInt(request.getParameter("hate"));
		
		LikeDAO dao = new LikeDAO();
		LikeDTO dto = new LikeDTO(post_num, info.getUser_id(), like, hate);

		if(dao.repeateLike(post_num ,info.getUser_id()) == 0) {
			cnt = dao.addLike(dto);
		};
				
		if(cnt >0) {
			System.out.println("추천/비추천 등록 성공");
		} else {
			System.out.println("추천/비추천 등록 실패");	
		};

		out.write(cnt + "");
		
		
		
		
	}

}
