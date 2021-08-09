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

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		VipMemberDTO dto = new VipMemberDTO(id, pw);
		VipMemberDAO dao = new VipMemberDAO();
		
		VipMemberDTO loginDto = dao.login(dto);
		
		if (loginDto != null) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("info", loginDto);
			response.sendRedirect("index.jsp");
			
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect("login.jsp");

		}
		
		
	}

}
