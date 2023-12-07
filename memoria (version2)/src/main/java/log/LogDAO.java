package log;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import common.JDBCConnect;
import member.MemberDAO;
import member.MemberDTO;

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
	
	public String recommendcate(String email) {
		String result = null;
		String sql = "select type,count(*)as '조회수' from product join log on product.productid = log.productid where memberemail=?"
				+ " group by type ORDER BY COUNT(*) DESC";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getString(1);
					
			}else {
				result = new MemberDAO().checkcate(email);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}