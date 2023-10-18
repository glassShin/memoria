package member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletContext;

import common.JDBCConnect;
import utils.Naver_Sens_V2;

public class MemberDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	public boolean insertmember(String mail, String passward, String name, String phoneNum ,String birth, String sex) {
		con = getConnection();
		boolean result = true;
		String sql = "insert into member values (?,?,?,NULL,?,?,?,sysdate)";
		try {
			psmt=con.prepareStatement(sql);
			psmt.setString(1, mail);
			psmt.setString(2, passward);
			psmt.setString(3, name);
			psmt.setString(4, phoneNum);
			psmt.setString(5, birth);
			psmt.setString(6, sex);
			int rs = psmt.executeUpdate();
			if(rs == 0) {
				result = false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return result;
	}
	
	public MemberDTO memberlogin(String mail,String pass) {
		con = getConnection();
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
				dto.setPhoneNum(rs.getString(5));
				dto.setBirth(rs.getString(6));
				dto.setSex(rs.getString(7));
				dto.setRegidate(rs.getDate(8));
				dto.setCategory(rs.getString(9));
				dto.setRole(rs.getString(10));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	public MemberDTO updateMember(String mail, String updatePart, String updateValue) {
		MemberDTO dto = new MemberDTO();
		con = getConnection();
		String sql = "update member set " + updatePart + "= ? where memberemail = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, updateValue);
			psmt.setString(2, mail);
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	public MemberDTO deleteMember(String mail, String pass) {
		con = getConnection();
		MemberDTO dto = new MemberDTO();
		String sql = "delete from member where memberemail = ? and memberpassward = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, mail);
			psmt.setString(2, pass);
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public boolean resetPassword ( String mail, String pass) {
		con = getConnection();
		boolean check = true;
		MemberDTO dto = new MemberDTO();
		
		String sql = "update member set  memberpassward= ? where memberemail = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, pass);
			psmt.setString(2, mail);
			int num = psmt.executeUpdate();
			if(num != 1) return check = false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}
	
	
	
	
	//가입한 전화번호 사용 가능하는지 확인  
	public MemberDTO checkTel(String tel){
		con = getConnection();
		MemberDTO dto = new MemberDTO();
		String sql = "select * from member where memberphonenumber = '" + tel+ "'";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				dto.setMail(rs.getString(1));
				System.out.println(rs.getString(1));
				dto.setPassward(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setAddr(rs.getString(4));
				dto.setPhoneNum(rs.getString(5));
				dto.setBirth(rs.getString(6));
				dto.setSex(rs.getString(7));
				dto.setRegidate(rs.getDate(8));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	public Boolean checkCode(String sendedCode, String userInputCode) {
		con = getConnection();
		boolean check = true;
	    System.out.println(sendedCode + " : " + userInputCode);

	    if (sendedCode.equals(userInputCode)) {
	        return false;
	    }
	    return check;
	}

	   
	
	
	//본인인증 메세지 보내기
	public String sendRandomMessage(String tel) {
        Naver_Sens_V2 message = new Naver_Sens_V2();
        Random rand = new Random();
        String numStr = "";
        for (int i = 0; i < 6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr += ran;
        }
        System.out.println("회원가입 문자 인증 => " + numStr);

        message.send_msg(tel, numStr);

        return numStr;
    }
	
	
	
}
