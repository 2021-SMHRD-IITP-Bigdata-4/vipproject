package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LikeDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
		
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
	
	public int addLike(LikeDTO dto) {
		conn();
		String sql = "insert into post_like values(post_like_SEQ.nextval,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,dto.getPost_num());
			psmt.setString(2,dto.getUser_id());
			psmt.setInt(3,dto.getLike_check());
			psmt.setInt(4,dto.getHate_check());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return cnt;		
	}
	
	public int countLike(int post_num) {
		conn();
		String sql = "select count(*) as likeCount from (select * from post_like where post_num = ?) where like_check = 1";
		int likeCount = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_num);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				likeCount = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return likeCount;
	}
	
	public int countHate(int post_num) {
		conn();
		String sql = "select count(*) as hateCount from (select * from post_like where post_num = ?) where hate_check = 1";
		int hateCount = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_num);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				hateCount = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return hateCount;
	}
	
	public int repeateLike(int post_num, String user_id) {
		conn();
		String sql = "select * from post_like where post_num =? and user_id = ?";
		int result = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_num);
			psmt.setString(2, user_id);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				result = -1;				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
				
	}
	
	
	
}
