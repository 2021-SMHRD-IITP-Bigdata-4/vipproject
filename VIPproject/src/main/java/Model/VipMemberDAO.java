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
	
}
