package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DbCon1")
public class DbCon1 extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int cnt = 0;

		public static Statement dbConnect() throws Exception{
			
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_e1";
			String db_pw = "smhrd1";

			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);

			Statement stmt = conn.createStatement();
			
			return stmt;
			
		}
	}

}
