package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CalendarDAO;

@WebServlet("/Calendardelete")
public class CalendarDelete extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sca_num = request.getParameter("sca_num");
		
		CalendarDAO dao = new CalendarDAO();
		int cnt = dao.deleteOne(sca_num);
		
		if (cnt>0) {
			System.out.println("삭제 성공");
		}else {
			System.out.println("삭제 실패");
		}
		
		response.sendRedirect("boardMain.jsp");
		
	}

}
