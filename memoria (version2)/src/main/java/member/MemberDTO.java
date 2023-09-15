package member;

import java.sql.Date;

public class MemberDTO {
	
	private String mail;
	private String passward;
	private String name;
	private String addr;
	private String birth;
	private String sex;
	private Date regidate;
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberDTO(String mail, String passward, String name, String addr, String birth, String sex, Date regidate) {
		super();
		this.mail = mail;
		this.passward = passward;
		this.name = name;
		this.addr = addr;
		this.birth = birth;
		this.sex = sex;
		this.regidate = regidate;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassward() {
		return passward;
	}

	public void setPassward(String passward) {
		this.passward = passward;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getRegidate() {
		return regidate;
	}

	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	
}
