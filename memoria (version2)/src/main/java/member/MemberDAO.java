package member;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import common.JDBCConnect;

public class MemberDAO extends JDBCConnect{

	public MemberDAO(ServletContext application) {
		super(application);
	}
	
	public int insertmember(String mail,String pass,String name,String phonenum,String birth) {
		int result = 0;
		String sql = "insert into member(";
		return result;
	}
	
	public MemberDTO memberlogin(String mail,String pass) {
		MemberDTO dto = new MemberDTO();
		String sql = "select * from member where memberemail=? and memberpassward=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, mail);
			psmt.setString(2, pass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setMail(rs.getString(1));
				dto.setPassward(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setAddr(rs.getString(4));
				dto.setBirth(rs.getString(5));
				dto.setSex(rs.getString(6));
				dto.setRegidate(rs.getDate(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
}
