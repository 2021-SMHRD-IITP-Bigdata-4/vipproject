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

@WebServlet("/UserUpdateService")
public class UserUpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");
		
		request.setCharacterEncoding("EUC-KR");
		
		String id = info.getUser_id();
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String display_name = request.getParameter("display_name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String have_dog = request.getParameter("have_dog");
		
		VipMemberDTO dto = new VipMemberDTO(id, display_name, name, pw, phone, address, have_dog);
		VipMemberDAO dao = new VipMemberDAO();
		
		int cnt = dao.update(dto);
		
		if (cnt>0) {
			System.out.println("업데이트 성공");
			session.setAttribute("info", dto);
		} else {
			System.out.println("업데이트 실패");
		}
		
		response.sendRedirect("index.jsp");
		
	}

}
