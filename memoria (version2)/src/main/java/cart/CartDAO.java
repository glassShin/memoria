package cart;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import common.JDBCConnect;

public class CartDAO extends JDBCConnect {
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	public boolean cartcheck(String email,String product) {
		boolean result = false;
		con = getConnection();
		String sql = "select * from cart where memberemail=? and productid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, product);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public String cartInsert(String email, String product) {
		String msg = "";
		con = getConnection();
		String sql = "select productstock from product where productid=?";
		String sql1 = "insert into cart values(?,?,null,default)";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, product);
			rs = psmt.executeQuery();
			rs.next();
			if(rs.getInt(1) == 0) {
				msg = "stock zero";
			}else {
				psmt.close();
				psmt = con.prepareStatement(sql1);
				psmt.setString(1, email);
				psmt.setString(2, product);
				psmt.executeUpdate();
				msg = "completion";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return msg;
	}
	public ArrayList<CartListDTO> cartSelect(String email) {
		ArrayList<CartListDTO> list = new ArrayList<CartListDTO>();
		con = getConnection();
		String sql = "select productkname,productename,productprice,productcnt,product.productid,cartid,productml from cart join product on cart.productid = product.productid where memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			while(rs.next()) {
				CartListDTO dto = new CartListDTO();
				dto.setName(rs.getString(1));
				dto.setEname(rs.getString(2));
				dto.setPrice(rs.getInt(3));
				dto.setCnt(rs.getInt(4));
				dto.setProductid(rs.getString(5));
				dto.setCartid(rs.getString(6));
				dto.setProductml(rs.getString(7));
				
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public void cartUpdate(String id,String cnt) {
		int cntV = Integer.parseInt(cnt);
		int idV = Integer.parseInt(id);
		con = getConnection();
		String sql = "update cart set productcnt=? where cartid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, cntV);
			psmt.setInt(2, idV);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void cartDelete(String id) {
		int idV = Integer.parseInt(id);
		con = getConnection();
		String sql = "delete from cart where cartid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, idV);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Map<String,Integer> selectInfo(String email) {
		con = getConnection();
		Map<String,Integer> list = new HashMap<String,Integer>();
		String sql = "select productid,productcnt from cart where memberemail=?";
		String sql1 = "delete from cart where memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			while(rs.next()) {
				String key = rs.getString(1);
				int value = rs.getInt(2);
				list.put(key, value);
			}
			psmt.close();
			psmt = con.prepareStatement(sql1);
			psmt.setString(1, email);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}


}
