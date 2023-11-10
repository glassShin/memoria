package payment;

import java.sql.Date;

public class PaymentDTO {
	private String paymentid;
	private String email;
	private String info;
	private int price;
	private Date regidate;
	private String condi;
	
	public PaymentDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public PaymentDTO(String paymentid, String email, String info, int price, Date regidate, String condi) {
		super();
		this.paymentid = paymentid;
		this.email = email;
		this.info = info;
		this.price = price;
		this.regidate = regidate;
		this.condi = condi;
	}
	
	public String getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(String paymentid) {
		this.paymentid = paymentid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	public String getCondi() {
		return condi;
	}
	public void setCondi(String condi) {
		this.condi = condi;
	}
	
}
