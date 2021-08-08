package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CalendarDAO {
     
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
    CalenderDTO postDto = null;
	ArrayList<CalenderDTO> list = null;
	int totalCount = 0;
	
		public void conn() {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
		String db_id = "campus_e1";
		String db_pw = "smhrd1";
		
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch(Exception e) {
			e.printStackTrace();
		} 
		}
		public void close() {
			try {
				if(rs != null) {
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
		
		public int insertCalendar(CalenderDTO dto) {
			conn();
			String sql = "insert into schedule values(schedule_SEQ.nextval,?,?,?,?,?,?,?, sysdate)";
			try {
				
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, dto.getSca_num());
				psmt.setInt(2, dto.getDog_num());
				psmt.setString(3, dto.getUser_id());
				psmt.setString(4, dto.getSca_pdate());
				psmt.setString(5, dto.getSca_title());
				psmt.setString(6, dto.getSca_content());
				psmt.setString(7, dto.getDog_name());
				
				cnt = psmt.executeUpdate();

			
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;
		}
		
		public ArrayList<CalenderDTO> selectAll() {
			conn();
			String sql = "select * from schedule";
			list = new ArrayList<CalenderDTO>();
			try {
				psmt = conn.prepareStatement(sql);
				
				rs = psmt.executeQuery();

				while(rs.next()) {
				 int sca_num= rs.getInt(1);
				 int dog_num= rs.getInt(2);
				 String user_id= rs.getString(3);
				 String sca_pdate= rs.getString(4);
				 String sca_title= rs.getString(5);
				 String sca_content= rs.getString(6);
				 String dog_name= rs.getString(7);
					
			     postDto= new CalenderDTO(sca_num, dog_num, user_id,  sca_pdate, sca_title, sca_content, dog_name);
			     
			     list.add(postDto);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
		
		public CalenderDTO selecOne(String num) {
			conn();
			String sql = "select * from community where post_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int sca_num= rs.getInt(1);
				int dog_num= rs.getInt(2);
			    String user_id= rs.getString(3);
				String sca_pdate= rs.getString(4);
				String sca_title= rs.getString(5);
				String sca_content= rs.getString(6);
				String dog_name= rs.getString(7);
				
				postDto = new CalenderDTO(sca_num, dog_num, user_id,  sca_pdate, sca_title, sca_content, dog_name);
			}
		
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return postDto;
	}
		
	
		public int deleteOne(String sca_num) {
			conn();
			String sql = "delete from schedule where post_num = ?";
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, sca_num);
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			 
			return cnt;
		}
		
		public int updateBoard(CalenderDTO dto) {
			conn();
			String sql = "update schedule set dog_num=?, dog_name =?, sca_title=?, sca_content=?, sca_pdate=sysdate where sca_num = ?";
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, dto.getDog_num());
				psmt.setInt(2, dto.getSca_num());
				psmt.setString(3, dto.getDog_name());
				psmt.setString(4, dto.getSca_title());
				psmt.setString(5, dto.getSca_content());
				
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
}
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

