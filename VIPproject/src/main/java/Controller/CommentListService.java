package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Model.CommentDAO;
import Model.CommentDTO;

@WebServlet("/CommentListService")
public class CommentListService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		
		CommentDAO dao = new CommentDAO();
		ArrayList<CommentDTO> list = dao.listComment(post_num);
		
		String result = gson.toJson(list);
		
		if (list != null) {
			System.out.println("댓글 가져오기 성공");
		} else {
			System.out.println("댓글 가져오기 실패");
		}
		
		out.write(result + "");
	}

}
