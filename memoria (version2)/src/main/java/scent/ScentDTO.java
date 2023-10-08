package scent;

public class ScentDTO {

	private String s_id;
	private String s_name;
	private String s_content;

	public ScentDTO(String s_id, String s_name, String s_content) {
		super();
		this.s_id = s_id;
		this.s_name = s_name;
		this.s_content = s_content;
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_content() {
		return s_content;
	}

	public void setS_content(String s_content) {
		this.s_content = s_content;
	}

	
}
