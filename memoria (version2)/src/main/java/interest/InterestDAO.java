package interest;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import cart.CartDTO;
import common.JDBCConnect;

public class InterestDAO extends JDBCConnect{
	
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public InterestDAO() {
		con = getConnection();
	}
	
	public ArrayList<InterestDTO> selectInterest(String email) {
		ArrayList<InterestDTO> list = new ArrayList<InterestDTO>();
		String sql = "select interestid,product.productid,product.productkname,product.productename from product join interest on product.productid = interest.productid where memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			while(rs.next()) {
				InterestDTO dto = new InterestDTO();
				dto.setInterid(rs.getInt(1));
				dto.setProductid(rs.getString(2));
				dto.setKname(rs.getString(3));
				dto.setEname(rs.getString(4));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean checkInterest(String email,String pid) {
		boolean result = true;
		
		String sql = "select * from interest where productid=? and memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, pid);
			psmt.setString(2, email);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	public void insertInterest(String email,String pid) {
		String sql = "insert into interest values(null,?,?)";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, pid);
			psmt.setString(2, email);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public int deleteInterest(String email,String pid) {
		String sql = "delete from interest where memberemail=? and productid=?";
		int result = 0;
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pid);
			result = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	
	

}
