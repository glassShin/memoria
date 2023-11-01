package log;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import common.JDBCConnect;

public class LogDAO  extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public LogDAO() {
		con = getConnection();
	}
	
	public void insertLog(String email,String pid) {
		String sql = "insert into log values(null,?,?)";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pid);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
