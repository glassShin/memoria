package payment;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
	public ArrayList<PaymentDTO> selectpayment(String email) {
		ArrayList<PaymentDTO> list = new ArrayList<PaymentDTO>();
		String sql = "select * from payment where memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			while(rs.next()) {
				PaymentDTO dto = new PaymentDTO();
				dto.setPaymentid(rs.getString(1));
				dto.setEmail(rs.getString(2));
				dto.setInfo(rs.getString(3));
				dto.setPrice(rs.getInt(4));
				dto.setRegidate(rs.getDate(5));
				dto.setCondi(rs.getString(6));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}
}
