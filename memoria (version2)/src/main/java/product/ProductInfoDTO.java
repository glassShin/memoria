package product;

public class ProductInfoDTO {
	private String pid;
	private String kname;
	private String ename;
	private int price;
	private String scentid;
	private String type;
	private String img;
	private String top;
	private String topcontent;
	private String mid;
	private String midcontent;
	private String base;
	private String basecontent;
	private String info;
	private String pml;
	
	
	

	public ProductInfoDTO(String pid, String kname, String ename, int price, String scentid, String type, String img,
			String top, String topcontent, String mid, String midcontent, String base, String basecontent, String info,
			String pml) {
		super();
		this.pid = pid;
		this.kname = kname;
		this.ename = ename;
		this.price = price;
		this.scentid = scentid;
		this.type = type;
		this.img = img;
		this.top = top;
		this.topcontent = topcontent;
		this.mid = mid;
		this.midcontent = midcontent;
		this.base = base;
		this.basecontent = basecontent;
		this.info = info;
		this.pml = pml;
	}

	public ProductInfoDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getScentid() {
		return scentid;
	}

	public void setScentid(String scentid) {
		this.scentid = scentid;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTop() {
		return top;
	}

	public void setTop(String top) {
		this.top = top;
	}

	public String getTopcontent() {
		return topcontent;
	}

	public void setTopcontent(String topcontent) {
		this.topcontent = topcontent;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMidcontent() {
		return midcontent;
	}

	public void setMidcontent(String midcontent) {
		this.midcontent = midcontent;
	}

	public String getBase() {
		return base;
	}

	public void setBase(String base) {
		this.base = base;
	}

	public String getBasecontent() {
		return basecontent;
	}

	public void setBasecontent(String basecontent) {
		this.basecontent = basecontent;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getPml() {
		return pml;
	}

	public void setPml(String pml) {
		this.pml = pml;
	}

}
