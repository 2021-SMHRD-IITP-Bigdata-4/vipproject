package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DogInfoDAO;
import Model.DogInfoDTO;
import Model.facilityDTO;

@WebServlet("/DogInfo")
public class DogInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/* 그냥 개 목럭을 선택하면 이동하는 페이지라서 가장 맨밑 코드 세줄만 필요할거 같은데... 확인필요 */
		
		/* 인코딩 뭘 쓸지 고르기 */
		request.setCharacterEncoding("EUC-KR");
		/* response.setCharacterEncoding("utf-8"); */

		
		String t_type = request.getParameter("t_type");
		String t_origin = request.getParameter("t_origin");
		String t_personality = request.getParameter("t_personality");
		String t_size = request.getParameter("t_size");
		String t_weight = request.getParameter("t_weight");
		String t_disease = request.getParameter("t_disease");
		String t_resistance = request.getParameter("t_resistance");
		String t_workout = request.getParameter("t_workout");
		String t_photo = request.getParameter("t_photo");
	
	
		DogInfoDTO dto = new DogInfoDTO(t_type, t_origin, t_personality, t_size, t_weight,
				t_disease, t_resistance, t_workout, t_photo);
		DogInfoDAO dao = new DogInfoDAO();
		
		ArrayList<DogInfoDTO> list = dao.selectAll();
		
		/* 누르면 이동 */
		HttpSession session = request.getSession();
		session.setAttribute("t_type", t_type);
		
		/* 다음 depth 에서 클릭한 견종의 정보만 단일로 보여주려함. 이 코드 맞는지? */
		response.sendRedirect("doginfo_basic3_type.jsp?t_type="+t_type);
		/* response.sendRedirect("doginfo_basic3_type.jsp"); */
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

}
