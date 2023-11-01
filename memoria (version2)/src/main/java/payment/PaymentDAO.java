package payment;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import common.JDBCConnect;

public class PaymentDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public PaymentDAO() {
		con = getConnection();
	}
	
	public void insertpayment(String id,String email,String title,String price) {
		String sql = "insert into payment values(?,?,?,?,default,default)";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, email);
			psmt.setString(3, title);
			psmt.setInt(4, Integer.parseInt(price));
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
