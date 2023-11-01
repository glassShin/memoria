package member;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Vector;
import common.JDBCConnect;
import utils.Naver_Sens_V2;

public class MemberDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	public MemberDAO() {
		con = getConnection();
	}
	
	public MemberDTO getmember(String email) {
		MemberDTO dto = new MemberDTO();
		String sql = "select * from member where memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
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
	public boolean insertmember(String mail, String passward, String name, String phoneNum ,String birth, String sex) {
		boolean result = true;
		String sql = "insert into member(memberemail,memberpassward,membername,memberaddress,memberphonenumber,memberbirth,membersex,regidate) values (?,?,?,NULL,?,?,?,sysdate())";
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
	
	public boolean memberUpdate(String name,String mail,String pass,String phone,String birth,String id) {
		boolean result = true;
		String sql = "update member set membername=?,memberemail=?,memberpassward=?,memberphonenumber=?,memberbirth=? where memberemail=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, mail);
			psmt.setString(3, pass);
			psmt.setString(4, phone);
			psmt.setString(5, birth);
			psmt.setString(6, id);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = false;
		}
		return result;
	}
	
	public void deleteMember(String mail) {
		String sql = "delete from member where memberemail = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, mail);
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean resetPassword ( String mail, String pass) {

		boolean check = true;
		
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
		String teet = "test";
		MemberDTO dto = new MemberDTO();
		String sql = "select * from member where memberphonenumber = '" + tel+ "'";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
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
	
	public Boolean checkCode(String sendedCode, String userInputCode) {

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
	
	
	// 총 몇명의 유저정보가 있는가 ( 사용자의 경우 ) 
    public int userCount(Map<String, Object> map) {

    	int totalcount = 0;
    	
    	String query = "select count(*) from member";
    	
    	try {
    		stmt = con.createStatement();
    		rs = stmt.executeQuery(query);
    		rs.next();
    		totalcount = rs.getInt(1);
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return totalcount;
    	
    }
    
    public String checkcate(String email) {
    	String type = null;
    	String sql = "select category from member where memberemail="+email;
    	try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				type = rs.getString(1);
			}else {
				type="고급스러운";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return type;
    }
    
    
    
public List<MemberDTO> selectUserinfo(Map<String, Object> map) {
    	
    	List<MemberDTO> bbs = new Vector<MemberDTO>();
    	
    	String query = "SELECT * FROM member";
    	if (map.get("searchWord") != null) {
    	    query += " WHERE " + map.get("searchField") + " LIKE '%" + map.get("searchWord") + "%'";
    	}
    	query += " ORDER BY memberemail ASC";
    		  try {
    			  stmt = con.createStatement();
    			  rs = stmt.executeQuery(query);
    			  
    			  while (rs.next()) {
    				  MemberDTO dto = new MemberDTO();
    				  
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
    				  
    				 bbs.add(dto);
    			  }
    		  } catch(Exception e) {
    			  e.printStackTrace();
    		  }
    		  return bbs;
    }

	public void close() { 
		try {            
			if (rs != null) rs.close(); 
			if (stmt != null) stmt.close();
			if (psmt != null) psmt.close();
			if (con != null) con.close(); 

			System.out.println("JDBC 자원 해제");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}
