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
		// join.jsp���� �޾ƿ� key���� userId�̰�
		// value���� ������ ������ ���� ��, String userId���� value���� ����.
		PrintWriter out = response.getWriter(); 
		
		VipMemberDAO dao = new VipMemberDAO();
		
		int cnt = dao.checkId(userId);
		
		if (cnt == 0) {
			System.out.println("�̹� �����ϴ� ���̵��Դϴ�.");
		} else if (cnt == 1) {
			System.out.println("��� ������ ���̵��Դϴ�.");
		}
		
		out.write(cnt + ""); // --> ajax ������� result�� ��
		
	}

} 
