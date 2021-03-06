package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	BoardDTO postDto = null;
	BoardDTO pageDto = null;
	BoardDTO searchDto = null;
	BoardDTO catDto = null;
	ArrayList<BoardDTO> list = null;
	ArrayList<BoardDTO> pageList = null;
	ArrayList<BoardDTO> searchList = null;
	ArrayList<BoardDTO> catList = null;
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
	
	public int insertBoard(BoardDTO dto) {
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
	
	public ArrayList<BoardDTO> selectAll() {
		conn();
		String sql = "select * from community";
		list = new ArrayList<BoardDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int post_num = rs.getInt(1);
				String user_id = rs.getString(2);
				String display_name = rs.getString(3);
				String post_sort = rs.getString(4);
				String post_title = rs.getString(5);
				String post_memo = rs.getString(6);
				String post_photo = rs.getString(7);
				String post_date = rs.getString(8);
				
				postDto = new BoardDTO(post_num, user_id, display_name, post_sort, post_title, post_memo, post_photo, post_date);
				
				list.add(postDto);
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public BoardDTO selectOne(String num) {
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
				
				postDto = new BoardDTO(post_num, user_id, display_name, post_sort, post_title, post_memo, post_photo, post_date);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return postDto;
	}
	
	public int deleteOne(int post_num) {
		conn();
		String sql = "delete from community where post_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_num);
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		 
		return cnt;
	}
	
	public int updateBoard(BoardDTO dto) {
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
	
	public ArrayList<BoardDTO> pagingBoard(int pageNum, int countList) {
		conn();
		String sql = "select X.* from ( select rownum as rnum, A.* from ( select * from community order by post_date desc) A where rownum <= ?) X where rnum >= ?";
		int startNum = (pageNum*countList) - countList+1;
		int endNum = pageNum*countList;
		pageList = new ArrayList<BoardDTO>();
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
				
				pageDto = new BoardDTO(post_num, user_id, display_name, post_sort, post_title, post_memo, post_photo, post_date);
				
				pageList.add(pageDto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return pageList;
		
		
		
	}
	
	public ArrayList<BoardDTO> searchBoard(int pageNum, int countList, String searchType, String searchKey) {
		conn();
		String sql = "";
		if (searchType.equals("post_title")) {
			sql = "select X.* from ( select rownum as rnum, A.* from (select * from community order by post_date desc) A where rownum <= ? and post_title like ?) X where rnum >= ?";
		} else if (searchType.equals("post_memo")) {
			sql = "select X.* from ( select rownum as rnum, A.* from (select * from community order by post_date desc) A where rownum <= ? and post_memo like ?) X where rnum >= ?";
		} else if (searchType.equals("display_name")) {
			sql = "select X.* from ( select rownum as rnum, A.* from (select * from community order by post_date desc) A where rownum <= ? and display_name like ?) X where rnum >= ?";
		} 
		int startNum = (pageNum*countList) - countList+1;
		int endNum = pageNum*countList;
		searchList = new ArrayList<BoardDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, endNum);
			psmt.setString(2, "%"+searchKey+"%");
			psmt.setInt(3, startNum);
			
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
				
				searchDto = new BoardDTO(post_num, user_id, display_name, post_sort, post_title, post_memo, post_photo, post_date);
				
				searchList.add(searchDto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return searchList;
	}
	
	public ArrayList<BoardDTO> selectCat(String post_sort){
		conn();
		String sql = "select * from community where post_sort = ? order by post_date desc";				
		catList = new ArrayList<BoardDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, post_sort);

			rs = psmt.executeQuery();	
			
			while(rs.next()) {
				int post_num = rs.getInt(1);
				String user_id = rs.getString(2);
				String display_name = rs.getString(3);
				String post_sort2 = rs.getString(4);
				String post_title = rs.getString(5);
				String post_memo = rs.getString(6);
				String post_photo = rs.getString(7);
				String post_date = rs.getString(8);
				
				catDto = new BoardDTO(post_num, user_id, display_name, post_sort2, post_title, post_memo, post_photo, post_date);
				
				catList.add(catDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
				
		return catList;
	}
	
	public ArrayList<BoardDTO> selectAllCat(){
		conn();
		String sql = "select * from community order by post_date desc";				
		catList = new ArrayList<BoardDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();	
			
			while(rs.next()) {
				int post_num = rs.getInt(1);
				String user_id = rs.getString(2);
				String display_name = rs.getString(3);
				String post_sort2 = rs.getString(4);
				String post_title = rs.getString(5);
				String post_memo = rs.getString(6);
				String post_photo = rs.getString(7);
				String post_date = rs.getString(8);
				
				catDto = new BoardDTO(post_num, user_id, display_name, post_sort2, post_title, post_memo, post_photo, post_date);
				
				catList.add(catDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
				
		return catList;
	}
}

	





