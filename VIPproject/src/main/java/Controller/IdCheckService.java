package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.VipMemberDAO;

@WebServlet("/IdCheckService")
public class IdCheckService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
			
		String userId = request.getParameter("userId");
		// join.jsp에서 받아온 key값이 userId이고
		// value값은 유저가 실제로 적은 값, String userId에는 value값이 들어간다.
		PrintWriter out = response.getWriter(); 
		
		VipMemberDAO dao = new VipMemberDAO();
		
		int cnt = dao.checkId(userId);
		
		if (cnt == 0) {
			System.out.println("이미 존재하는 아이디입니다.");
		} else if (cnt == 1) {
			System.out.println("사용 가능한 아이디입니다.");
		}
		
		out.write(cnt + ""); // --> ajax 결과값인 result가 됨
		
	}

} 
