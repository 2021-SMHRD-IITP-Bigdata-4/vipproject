package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DogInfoDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	DogInfoDTO DoginfoDto = null;
	ArrayList<DogInfoDTO> list = null;
	
	
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
	
	/* ��������� �����ִ� ������ doginfo_basic3 ���� ����Ϸ��� ���� */
	/* doginfo_basic3 ���� selectAll �� �ҷ����� - �����ʿ�κ�!! �Ʒ� selectALL() ����*/
	/* ��� ����� ���̺���� dog_type_info */
	/* ��� ����� ���̺��� t_photo  ���� ���� ���� ���� ����, ���� �Ƹ� ��? */
	/* �Ű����� �ȿ� �̸� name�� ���Ƿ� �����ְ� psmt.setString(1, name); �̷��� �ϴ°� �´���? */
	public DogInfoDTO selectOne(String name) {
		conn();
		String sql = "select * from dog_type_info where post_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String t_type = rs.getString(1);
				String t_origin =rs.getString(2);
				String t_personality = rs.getString(3);
				String t_size = rs.getString(4);
				String t_weight = rs.getString(5);
				String t_disease = rs.getString(6);
				String t_resistance = rs.getString(7);
				String t_workout = rs.getString(8);
				String t_photo = rs.getString(9);
				
				DoginfoDto = new DogInfoDTO(t_type, t_origin,t_personality, t_size, t_weight, t_disease, t_resistance, t_workout, t_photo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return DoginfoDto;
	}
	
	public ArrayList<DogInfoDTO> selectAll() {
		conn();
		String sql = "select * from dog_type_info";
		list = new ArrayList<DogInfoDTO>();
		//ArrayList<DogInfoDTO> list = new ArrayList<DogInfoDTO>();
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String t_type = rs.getString(1);
				String t_origin =rs.getString(2);
				String t_personality = rs.getString(3);
				String t_size = rs.getString(4);
				String t_weight = rs.getString(5);
				String t_disease = rs.getString(6);
				String t_resistance = rs.getString(7);
				String t_workout = rs.getString(8);
				String t_photo = rs.getString(9);
				
				DoginfoDto = new DogInfoDTO(t_type, t_origin,t_personality, t_size, t_weight, t_disease, t_resistance, t_workout, t_photo);
				
				list.add(DoginfoDto);
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public ArrayList<DogInfoDTO> selectone() {
		conn();
		String sql = "select t_type from dog_type_info";
		list = new ArrayList<DogInfoDTO>();
		//ArrayList<DogInfoDTO> list = new ArrayList<DogInfoDTO>();
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String t_type = rs.getString(1);
				
				
				DoginfoDto = new DogInfoDTO(t_type);
				
				list.add(DoginfoDto);
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	

	
	
}
