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

import Model.BoardDAO;
import Model.BoardDTO;

@WebServlet("/BoardCategoryService")
public class BoardCategoryService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		
		String post_sort = request.getParameter("post_type");
		
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardDTO> list = null;
		if (post_sort.equals("전체")) {
			list = dao.selectAllCat();
		} else {			
			list = dao.selectCat(post_sort);
		}
		
		if(list != null) {
			System.out.println("카테고리 가져오기 성공");
		} else {
			System.out.println("카테고리 가져오기 실패");			
		}
		
		String result = gson.toJson(list);
		
		out.write(result + "");
		
	}

}
