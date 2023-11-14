package review;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCConnect;

public class ReviewDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public ReviewDAO() {
		con = getConnection();
	}
	
	public ArrayList<ReviewDTO> selectReview(String pid) {
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		String sql = "select * from review where productid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, pid);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				dto.setR_id(rs.getString(1));
				dto.setR_title(rs.getString(2));
				dto.setR_content(rs.getString(3));
				dto.setEmail(rs.getString(4));
				dto.setProduct(rs.getString(5));
				dto.setDate(rs.getDate(6));
				dto.setR_grade(rs.getInt(7));
				dto.setR_like(rs.getInt(8));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean insertReview(String user,String pid,String grade,String title,String content) {
		boolean result = true;
		String sql = "insert into review values(null,?,?,?,?,default,?,default)";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, title);
			psmt.setString(2, content);
			psmt.setString(3,user);
			psmt.setString(4, pid);
			psmt.setInt(5, Integer.parseInt(grade));
			psmt.executeUpdate();
		} catch (SQLException e) {
			result = false;
		}
		return result;
	}
	
	public boolean reviewDelCheck(String reviewid,String email) {
		boolean result = false;
		String sql = "select memberemail from review where reviewid=? and memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, reviewid);
			psmt.setString(2, email);
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
	
	public boolean reviewDelete(String reviewid) {
		boolean result = false;
		String sql = "delete from review where reviewid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, reviewid);
			result = psmt.executeUpdate() == 1 ? true : false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}

}
