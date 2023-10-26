package cart;

public class CartListDTO {
	private String name;
	private String ename;
	private int price;
	private int cnt;
	private String productid;
	private String cartid;
	
	
	public CartListDTO() {
		// TODO Auto-generated constructor stub
	}
	

	
	
	public CartListDTO(String name, String ename, int price, int cnt, String productid, String cartid) {
		super();
		this.name = name;
		this.ename = ename;
		this.price = price;
		this.cnt = cnt;
		this.productid = productid;
		this.cartid = cartid;
	}

	public String getProductid() {
		return productid;
	}


	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getCartid() {
		return cartid;
	}




	public void setCartid(String cartid) {
		this.cartid = cartid;
	}

	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	

}
