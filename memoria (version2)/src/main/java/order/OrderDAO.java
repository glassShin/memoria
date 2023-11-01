package order;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import common.JDBCConnect;

public class OrderDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public OrderDAO() {
		con = getConnection();
	}
	
	public void orderInsert(String id,String payid, String pid,int cnt,String name,String addr,String phone) {
		String sql = "insert into order1 values(?,?,?,?,default,?,?,?)";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, payid);
			psmt.setString(3, pid);
			psmt.setInt(4,cnt);
			psmt.setString(5, name);
			psmt.setString(6, addr);
			psmt.setString(7, phone);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
