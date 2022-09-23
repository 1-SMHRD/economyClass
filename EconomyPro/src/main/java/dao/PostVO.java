package dao;

import java.util.Date;

public class PostVO {

	private int post_num;
	private String mem_id;
	private String post_title;
	private String post_ctnt;
	private Date post_date = new Date();
	private int post_vcnt;
	private int wt_id;

	public PostVO() {

	}

	@Override
	public String toString() {
		return "PostVO [post_num=" + post_num + ", mem_id=" + mem_id + ", post_title=" + post_title + ", post_ctnt="
				+ post_ctnt + ", post_date=" + post_date + ", post_vcnt=" + post_vcnt + ", wt_id=" + wt_id + "]";
	}

	public PostVO(int post_num, String mem_id, String post_title, String post_ctnt, Date post_date, int post_vcnt,
			int wt_id) {
		super();
		this.post_num = post_num;
		this.mem_id = mem_id;
		this.post_title = post_title;
		this.post_ctnt = post_ctnt;
		this.post_date = post_date;
		this.post_vcnt = post_vcnt;
		this.wt_id = wt_id;
	}

	public int getPost_num() {
		return post_num;
	}

	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_ctnt() {
		return post_ctnt;
	}

	public void setPost_ctnt(String post_ctnt) {
		this.post_ctnt = post_ctnt;
	}

	public Date getPost_date() {
		return post_date;
	}

	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}

	public int getPost_vcnt() {
		return post_vcnt;
	}

	public void setPost_vcnt(int post_vcnt) {
		this.post_vcnt = post_vcnt;
	}

	public int getWt_id() {
		return wt_id;
	}

	public void setWt_id(int wt_id) {
		this.wt_id = wt_id;
	}
		
}