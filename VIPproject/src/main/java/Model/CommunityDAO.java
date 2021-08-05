package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommunityDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	CommunityDTO postDto = null;
	CommunityDTO pageDto = null;
	ArrayList<CommunityDTO> list = null;
	ArrayList<CommunityDTO> pageList = null;
	int totalCount = 0;
	
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
	
	public int insertBoard(CommunityDTO dto) {
		conn();
		String sql = "insert into community values(community_SEQ.nextval,?,?,?,?,?,?, sysdate)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUser_id());
			psmt.setString(2, dto.getDisplay_name());
			psmt.setString(3, dto.getPost_sort());
			psmt.setString(4, dto.getPost_title());
			psmt.setString(5, dto.getPost_memo());
			psmt.setString(6, dto.getPost_photo());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return cnt;
	}
	
	public ArrayList<CommunityDTO> selectAll() {
		conn();
		String sql = "select * from community";
		list = new ArrayList<CommunityDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int post_num = rs.getInt(1);
				String user_id = rs.getString(2);
				String display_name = rs.getString(3);
				String post_sort = rs.getString(4);
				String psot_title = rs.getString(5);
				String post_memo = rs.getString(6);
				String post_photo = rs.getString(7);
				String post_date = rs.getString(8);
				
				postDto = new CommunityDTO(post_num, user_id, display_name, post_sort, psot_title, post_memo, post_photo, post_date);
				
				list.add(postDto);
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public CommunityDTO selectOne(String num) {
		conn();
		String sql = "select * from community where post_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int post_num = rs.getInt(1);
				String user_id = rs.getString(2);
				String display_name = rs.getString(3);
				String post_sort = rs.getString(4);
				String post_title = rs.getString(5);
				String post_memo = rs.getString(6);
				String post_photo = rs.getString(7);
				String post_date = rs.getString(8);
				
				postDto = new CommunityDTO(post_num, user_id, display_name, post_sort, post_title, post_memo, post_photo, post_date);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return postDto;
	}
	
	public int deleteOne(String post_num) {
		conn();
		String sql = "delete from community where post_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, post_num);
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		 
		return cnt;
	}
	
	public int updateBoard(CommunityDTO dto) {
		conn();
		String sql = "update community set post_sort =?, post_title=?, post_memo=?, post_photo=?, post_date=sysdate where post_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPost_sort());
			psmt.setString(2, dto.getPost_title());
			psmt.setString(3, dto.getPost_memo());
			psmt.setString(4, dto.getPost_photo());
			psmt.setInt(5, dto.getPost_num());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return cnt;
	}
	
	public int totalCount() {
		conn();
		String sql = "select count(*) as totalCount from community";
		
		try {
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				totalCount = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		return totalCount;
	}
	
	public ArrayList<CommunityDTO> pagingBoard(int pageNum) {
		conn();
		String sql = "select X.* from ( select rownum as rnum, A.* from ( select * from community order by post_date desc) A where rownum <= ?) X where rnum >= ?";
		int startNum = (pageNum*10) - 9;
		int endNum = pageNum*10;
		pageList = new ArrayList<CommunityDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, endNum);
			psmt.setInt(2, startNum);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int post_num = rs.getInt(2);
				String user_id = rs.getString(3);
				String display_name = rs.getString(4);
				String post_sort = rs.getString(5);
				String post_title = rs.getString(6);
				String post_memo = rs.getString(7);
				String post_photo = rs.getString(8);
				String post_date = rs.getString(9);
				
				pageDto = new CommunityDTO(post_num, user_id, display_name, post_sort, post_title, post_memo, post_photo, post_date);
				
				pageList.add(pageDto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return pageList;
		
		
		
	}
	
}






