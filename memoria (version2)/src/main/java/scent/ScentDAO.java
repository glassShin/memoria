package scent;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCConnect;

public class ScentDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public ScentDAO() {
		con = getConnection();
	}
	
	public ArrayList<ScentDTO> selectScent() {
		ArrayList<ScentDTO> list = new ArrayList<ScentDTO>();
		String sql = "select * from scent";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				ScentDTO dto = new ScentDTO();
				dto.setS_id(rs.getString(1));
				dto.setS_category(rs.getString(2));
				dto.setS_name(rs.getString(3));
				dto.setS_content(rs.getString(4));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}