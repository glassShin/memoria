package order;

import java.sql.Date;

public class OrderDTO {
	private String o_id;
	private String paymentid;
	private String productid;
	private int o_cnt;
	private Date o_date;
	private String o_user;
	private String addr;
	private String o_phone;
	
	public OrderDTO(String o_id, String paymentid, String productid, int o_cnt, Date o_date, String o_user, String addr,
			String o_phone) {
		super();
		this.o_id = o_id;
		this.paymentid = paymentid;
		this.productid = productid;
		this.o_cnt = o_cnt;
		this.o_date = o_date;
		this.o_user = o_user;
		this.addr = addr;
		this.o_phone = o_phone;
	}

	public String getO_id() {
		return o_id;
	}

	public void setO_id(String o_id) {
		this.o_id = o_id;
	}

	public String getPaymentid() {
		return paymentid;
	}

	public void setPaymentid(String paymentid) {
		this.paymentid = paymentid;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public int getO_cnt() {
		return o_cnt;
	}

	public void setO_cnt(int o_cnt) {
		this.o_cnt = o_cnt;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public String getO_user() {
		return o_user;
	}

	public void setO_user(String o_user) {
		this.o_user = o_user;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getO_phone() {
		return o_phone;
	}

	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}
	
	

}
