package log;

public class LogDTO {
	private String l_id;
	private String email;
	private String productid;
	
	public LogDTO(String l_id, String email, String productid) {
		super();
		this.l_id = l_id;
		this.email = email;
		this.productid = productid;
	}

	public String getL_id() {
		return l_id;
	}

	public void setL_id(String l_id) {
		this.l_id = l_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}
}
