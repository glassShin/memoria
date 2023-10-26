package product;

public class ProductDTO {
	private String p_id;
	private String p_kname;
	private String p_ename;
	private int p_price;
	private String p_brand;
	private String scentid;
	private String type;
	private String image;
	private String top;
	private String mid;
	private String base;
	private String infomation;
	private int stock75ml;
	private int stock50ml;
	private int stock25ml;
	
	
	public ProductDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public ProductDTO(String p_id, String p_kname, String p_ename, int p_price, String p_brand, String scentid,
			String type, String image, String top, String mid, String base, String infomation, int stock75ml,
			int stock50ml, int stock25ml) {
		super();
		this.p_id = p_id;
		this.p_kname = p_kname;
		this.p_ename = p_ename;
		this.p_price = p_price;
		this.p_brand = p_brand;
		this.scentid = scentid;
		this.type = type;
		this.image = image;
		this.top = top;
		this.mid = mid;
		this.base = base;
		this.infomation = infomation;
		this.stock75ml = stock75ml;
		this.stock50ml = stock50ml;
		this.stock25ml = stock25ml;
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




	public String getType() {
		return type;
	}




	public void setType(String type) {
		this.type = type;
	}




	public String getImage() {
		return image;
	}




	public void setImage(String image) {
		this.image = image;
	}




	public String getTop() {
		return top;
	}




	public void setTop(String top) {
		this.top = top;
	}




	public String getMid() {
		return mid;
	}




	public void setMid(String mid) {
		this.mid = mid;
	}




	public String getBase() {
		return base;
	}




	public void setBase(String base) {
		this.base = base;
	}




	public String getInfomation() {
		return infomation;
	}




	public void setInfomation(String infomation) {
		this.infomation = infomation;
	}




	public int getStock75ml() {
		return stock75ml;
	}




	public void setStock75ml(int stock75ml) {
		this.stock75ml = stock75ml;
	}




	public int getStock50ml() {
		return stock50ml;
	}




	public void setStock50ml(int stock50ml) {
		this.stock50ml = stock50ml;
	}




	public int getStock25ml() {
		return stock25ml;
	}




	public void setStock25ml(int stock25ml) {
		this.stock25ml = stock25ml;
	}
	
	

}
