package review;

import java.sql.Date;

public class ReviewDTO {
	private String r_id;
	private String r_title;
	private String r_content;
	private String email;
	private Date date;
	private int r_cnt;
	private int r_grade;
	
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ReviewDTO(String r_id, String r_title, String r_content, String email, Date date, int r_cnt, int r_grade) {
		super();
		this.r_id = r_id;
		this.r_title = r_title;
		this.r_content = r_content;
		this.email = email;
		this.date = date;
		this.r_cnt = r_cnt;
		this.r_grade = r_grade;
	}
	
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getR_cnt() {
		return r_cnt;
	}
	public void setR_cnt(int r_cnt) {
		this.r_cnt = r_cnt;
	}
	public int getR_grade() {
		return r_grade;
	}
	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
	}
	
	
}
