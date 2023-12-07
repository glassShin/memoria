package interest;

public class InterestDTO {
	
	private int interid;
	private String productid;
	private String kname;
	private String ename;
	
	public InterestDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public InterestDTO(int interid, String productid, String kname, String ename) {
		super();
		this.interid = interid;
		this.productid = productid;
		this.kname = kname;
		this.ename = ename;
	}
	
	public int getInterid() {
		return interid;
	}
	public void setInterid(int interid) {
		this.interid = interid;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	
	

}
