package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class facilityDAO {
	
	PreparedStatement psmt = null;
	Connection conn = null;
	int cnt = 0;
	ResultSet rs = null;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_e1";
			String db_pw = "smhrd1";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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
	
	public ArrayList<facilityDTO> select() {
		conn();
		ArrayList<facilityDTO> list = new ArrayList<facilityDTO>();
		facilityDTO dto = null;
		try {
			String sql = "select * from facility";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int fac_num = rs.getInt(1);
				String fac_name = rs.getString(2);
				String fac_address = rs.getString(3);
				double fac_lati = rs.getDouble(4);
				double fac_long = rs.getDouble(5);
				String fac_sort = rs.getString(6);
				String fac_intro = rs.getString(6);

				dto = new facilityDTO(fac_num, fac_name, fac_address, fac_lati, fac_long, fac_sort, fac_intro);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public ArrayList<facilityDTO> latLon() {
		conn();
		ArrayList<facilityDTO> list = new ArrayList<facilityDTO>();
		facilityDTO dto = null;
		try {
			String sql = "select fac_name,fac_address,fac_lati,fac_long, fac_intro from facility";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String fac_name = rs.getString(1);
				String fac_address = rs.getString(2);
				double fac_lati = rs.getDouble(3);
				double fac_long = rs.getDouble(4);
				String fac_intro = rs.getString(5);
				
				dto = new facilityDTO(fac_name,fac_address,fac_lati, fac_long, fac_intro);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	
	public ArrayList<facilityDTO> cafe() {
		conn();
		ArrayList<facilityDTO> list = new ArrayList<facilityDTO>();
		facilityDTO dto = null;
		try {
			String sql = "select fac_name,fac_address,fac_lati,fac_long, fac_intro from facility where fac_sort = 'cafe'";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String fac_name = rs.getString(1);
				String fac_address = rs.getString(2);
				double fac_lati = rs.getDouble(3);
				double fac_long = rs.getDouble(4);
				String fac_intro = rs.getString(5);
				
				dto = new facilityDTO(fac_name,fac_address,fac_lati, fac_long, fac_intro);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public ArrayList<facilityDTO> room() {
		conn();
		ArrayList<facilityDTO> list = new ArrayList<facilityDTO>();
		facilityDTO dto = null;
		try {
			String sql = "select fac_name,fac_address,fac_lati,fac_long, fac_intro from facility where fac_sort = 'room'";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String fac_name = rs.getString(1);
				String fac_address = rs.getString(2);
				double fac_lati = rs.getDouble(3);
				double fac_long = rs.getDouble(4);
				String fac_intro = rs.getString(5);
				
				dto = new facilityDTO(fac_name,fac_address,fac_lati, fac_long, fac_intro);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ArrayList<facilityDTO> rastaurant() {
		conn();
		ArrayList<facilityDTO> list = new ArrayList<facilityDTO>();
		facilityDTO dto = null;
		try {
			String sql = "select fac_name,fac_address,fac_lati,fac_long, fac_intro from facility where fac_sort = 'rastaurant'";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String fac_name = rs.getString(1);
				String fac_address = rs.getString(2);
				double fac_lati = rs.getDouble(3);
				double fac_long = rs.getDouble(4);
				String fac_intro = rs.getString(5);
				
				dto = new facilityDTO(fac_name,fac_address,fac_lati, fac_long, fac_intro);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}


}
