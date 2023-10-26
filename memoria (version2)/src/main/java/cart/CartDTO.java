package cart;

public class CartDTO {
	private String email;
	private String product;
	private int cartid;
	private int productcnt;
	
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public CartDTO(String email, String product, int cartid, int productcnt) {
		super();
		this.email = email;
		this.product = product;
		this.cartid = cartid;
		this.productcnt = productcnt;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public int getProductcnt() {
		return productcnt;
	}
	public void setProductcnt(int productcnt) {
		this.productcnt = productcnt;
	}
	
	

}
