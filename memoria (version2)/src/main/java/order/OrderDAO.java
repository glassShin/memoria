package order;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
	
	public ArrayList<OrderDTO> orderSelect(String payid) {
		ArrayList<OrderDTO> list = new ArrayList<OrderDTO>();
		String sql = "select orderid,paymentid,order1.productid,product.productprice,ordercnt,orderdate,orderuser,orderaddress,orderphonenumber from order1 join product on order1.productid = product.productid where paymentid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, payid);
			rs = psmt.executeQuery();
			while(rs.next()) {
				OrderDTO dto = new OrderDTO();
				dto.setO_id(rs.getString(1));
				dto.setPaymentid(rs.getString(2));
				dto.setProductid(rs.getString(3));
				dto.setProductprice(rs.getInt(4));
				dto.setO_cnt(rs.getInt(5));
				dto.setO_date(rs.getDate(6));
				dto.setO_user(rs.getString(7));
				dto.setAddr(rs.getString(8));
				dto.setO_phone(rs.getString(9));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
