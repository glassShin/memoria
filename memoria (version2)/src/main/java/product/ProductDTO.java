package product;

public class ProductDTO {
	private String p_id;
	private String p_kname;
	private String p_ename;
	private int p_price;
	private int p_stock;
	private String p_brand;
	private String scentid;
	
	public ProductDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public ProductDTO(String p_id, String p_kname, String p_ename, int p_price, int p_stock, String p_brand,
			String scentid) {
		super();
		this.p_id = p_id;
		this.p_kname = p_kname;
		this.p_ename = p_ename;
		this.p_price = p_price;
		this.p_stock = p_stock;
		this.p_brand = p_brand;
		this.scentid = scentid;
	}
	
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_kname() {
		return p_kname;
	}
	public void setP_kname(String p_kname) {
		this.p_kname = p_kname;
	}
	public String getP_ename() {
		return p_ename;
	}
	public void setP_ename(String p_ename) {
		this.p_ename = p_ename;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_stock() {
		return p_stock;
	}
	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}
	public String getP_brand() {
		return p_brand;
	}
	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}
	public String getScentid() {
		return scentid;
	}
	public void setScentid(String scentid) {
		this.scentid = scentid;
	}
	
	

}
