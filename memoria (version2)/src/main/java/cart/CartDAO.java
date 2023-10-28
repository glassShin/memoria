package cart;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCConnect;

public class CartDAO extends JDBCConnect {
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public boolean cartcheck(String email,String product) {
		boolean result = false;
		con = getConnection();
		String sql = "select * from cart";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
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
		String sql = "select stock75ml from product where productid = ?";
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
	public ArrayList<CartListDTO> cartSelect() {
		ArrayList<CartListDTO> list = new ArrayList<CartListDTO>();
		con = getConnection();
		String sql = "select productkname,productename,productprice,productcnt,product.productid,cartid from cart join product on cart.productid = product.productid";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				CartListDTO dto = new CartListDTO();
				dto.setName(rs.getString(1));
				dto.setEname(rs.getString(2));
				dto.setPrice(rs.getInt(3));
				dto.setCnt(rs.getInt(4));
				dto.setProductid(rs.getString(5));
				dto.setCartid(rs.getString(6));
				
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
	

}
