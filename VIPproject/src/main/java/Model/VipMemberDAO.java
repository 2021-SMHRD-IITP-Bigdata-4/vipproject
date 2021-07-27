package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class VipMemberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	VipMemberDTO dto = null;
	boolean x = false;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
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
	
	public int join(VipMemberDTO dto) {
		conn();
		String sql = "insert into user_info values(?,?,?,?,?,?,?,user_info_SEQ.nextval)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUser_id());
			psmt.setString(2, dto.getDisplay_name());
			psmt.setString(3, dto.getUser_name());
			psmt.setString(4, dto.getUser_pw());
			psmt.setString(5, dto.getUser_phone());
			psmt.setString(6, dto.getUser_address());
			psmt.setString(7, dto.getHave_dog());

			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
	public boolean checkId(String id) {
		conn();
		String sql = "select * from user_info where user_id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				x = true;
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return x;
	}
	
	public VipMemberDTO login(VipMemberDTO dto) {
		conn();
		String sql = "select * from user_info where user_id = ? and user_pw =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUser_id());
			psmt.setString(2, dto.getUser_pw());
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				String user_id = rs.getString(1);
				String display_name = rs.getString(2);
				String user_name = rs.getString(3);
				String user_pw = rs.getString(4);
				String user_phone = rs.getString(5);
				String user_address = rs.getString(6);
				String have_dog = rs.getString(7);
				int cal_num = rs.getInt(8);
				
				dto = new VipMemberDTO(user_id, display_name, user_name, user_pw, user_phone, 
										user_address, have_dog, cal_num);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} 
		
		return dto;
		
	}
	
	public int update(VipMemberDTO dto) {
		conn();
		String sql = "update user_info set display_name =?, user_name = ?, user_pw = ?,"
				+" user_phone = ?, user_address = ?, have_dog = ? where user_id = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getDisplay_name());
			psmt.setString(2, dto.getUser_name());
			psmt.setString(3, dto.getUser_pw());
			psmt.setString(4, dto.getUser_phone());
			psmt.setString(5, dto.getUser_address());
			psmt.setString(6, dto.getHave_dog());
			psmt.setString(7, dto.getUser_id());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	
	return cnt;
	}
}
