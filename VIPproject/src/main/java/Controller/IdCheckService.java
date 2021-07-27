package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.VipMemberDAO;

@WebServlet("/IdCheckService")
public class IdCheckService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		
		VipMemberDAO dao = new VipMemberDAO();
		
		boolean x = dao.checkId(id);
		
		
	}

}
