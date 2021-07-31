package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommunityDAO;
import Model.CommunityDTO;
import Model.VipMemberDTO;

@WebServlet("/BoardWriteService")
public class BoardWriteService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");

		//String post_photo = request.getParameter("post_photo");
		//if (post_photo != null) {
		String saveDri = request.getServletContext().getRealPath("img");
		int maxSize = 5*1024*1024;
		MultipartRequest multi = new MultipartRequest(request, saveDri, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		String post_photo= URLEncoder.encode(multi.getFilesystemName("post_photo"), "EUC-KR");
		//}
		
		String user_id = info.getUser_id();
		String display_name = info.getDisplay_name();
		String post_sort = multi.getParameter("post_sort");
		String post_title = multi.getParameter("post_title");
		String post_memo = multi.getParameter("post_memo");
		
		CommunityDTO dto = new CommunityDTO(user_id, display_name, post_sort, post_title, post_memo, post_photo);
		CommunityDAO dao = new CommunityDAO();
		
		int cnt = dao.insertBoard(dto);
		
		if (cnt > 0) {
			System.out.println("업로드 성공");
		} else {
			System.out.println("업로드 실패");		
		}
		response.sendRedirect("boardMain.jsp");
 		
	}

}



