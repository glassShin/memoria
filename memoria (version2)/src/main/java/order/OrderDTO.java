package order;

import java.sql.Date;

public class OrderDTO {
	private String o_id;
	private String email;
	private String productid;
	private String o_addr;
	private Date date;
	
	
	public OrderDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public OrderDTO(String o_id, String email, String productid, String o_addr, Date date) {
		super();
		this.o_id = o_id;
		this.email = email;
		this.productid = productid;
		this.o_addr = o_addr;
		this.date = date;
	}
	
	public String getO_id() {
		return o_id;
	}
	public void setO_id(String o_id) {
		this.o_id = o_id;
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
	public String getO_addr() {
		return o_addr;
	}
	public void setO_addr(String o_addr) {
		this.o_addr = o_addr;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
