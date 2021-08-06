package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	CommentDTO dto = null;
	ArrayList<CommentDTO> list = null;
	
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_e1";
			String db_pw = "smhrd1";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int addComment(CommentDTO dto) {
		conn();
		String sql = "insert into reply values(reply_SEQ.nextval,?,?,?,?,sysdate)";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getPost_num());
			psmt.setString(2, dto.getUser_id());
			psmt.setString(3, dto.getDisplay_name());
			psmt.setString(4, dto.getReply_memo());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
		
	}
	
	public ArrayList<CommentDTO> listComment(int post_num) {
		conn();
		String sql = "select * from reply where post_num = ?";
		list = new ArrayList<CommentDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_num);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int post_reply_num = rs.getInt(1);
				post_num = rs.getInt(2);
				String user_id = rs.getString(3);
				String display_name = rs.getString(4);
				String reply_memo = rs.getString(5);
				String reply_date = rs.getString(6);
				
				dto = new CommentDTO(post_reply_num, post_num, user_id, display_name, reply_memo, reply_date);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public int countComment(int post_num) {
		conn();
		String sql = "select count(*) as replyCount from (select * from reply where post_num = ?)";
		int replyCount = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_num);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				replyCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return replyCount;
	}
	
	
	
}
