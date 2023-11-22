package heart;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import common.JDBCConnect;

public class HeartDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public HeartDAO() {
		con = getConnection();
	}
	
	public boolean checkHeart(String user,String reviewid) {
		boolean result = true;
		String sql = "select * from heart where memberemail=? and reviewid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, user);
			psmt.setString(2, reviewid);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = false;
			}
		} catch (SQLException e) {
			result = true;
		}
		
		return result;
	}
	
	public void insertHeart(String user,String reviewid) {
		String sql = "insert into heart values(null,?,?)";
		String sql1 = "update review set reviewlike= reviewlike+1 where reviewid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, user);
			psmt.setString(2, reviewid);
			psmt.executeUpdate();
			psmt = con.prepareStatement(sql1);
			psmt.setString(1, reviewid);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteHeart(String user,String reviewid) {
		String sql = "delete from heart where memberemail=? and reviewid=?";
		String sql1 = "update review set reviewlike= reviewlike-1 where reviewid=?";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, user);
			psmt.setString(2, reviewid);
			psmt.executeUpdate();
			psmt = con.prepareStatement(sql1);
			psmt.setString(1, reviewid);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
