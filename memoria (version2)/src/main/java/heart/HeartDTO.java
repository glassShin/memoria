package heart;

public class HeartDTO {
	private int heartid;
	private String email;
	private int r_id;
	
	public HeartDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public HeartDTO(int heartid, String email, int r_id) {
		super();
		this.heartid = heartid;
		this.email = email;
		this.r_id = r_id;
	}
	
	public int getHeartid() {
		return heartid;
	}
	public void setHeartid(int heartid) {
		this.heartid = heartid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	
	

}
