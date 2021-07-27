package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.VipMemberDAO;
import Model.VipMemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String display_name = request.getParameter("display_name");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String have_dog = request.getParameter("have_dog");
		
		VipMemberDTO dto = new VipMemberDTO(id, display_name, name, pw, phone, address, have_dog);
		VipMemberDAO dao = new VipMemberDAO();
		
		int cnt = dao.join(dto);
		
		if (cnt > 0) {
			System.out.println("가입성공");
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			response.sendRedirect("join_success.jsp");
		} else {
			System.out.println("가입실패");
			response.sendRedirect("join.jsp");
		}
		
		
	}

}
