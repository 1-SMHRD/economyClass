package dao;

import java.util.Date;

public class PCommentVO {

	private int pc_num;
	private String mem_id;
	private int post_num;
	private String cmt_ctnt;
	private Date cmt_date = new Date();

	public PCommentVO() {

	}

	@Override
	public String toString() {
		return "PCommentVO [pc_num=" + pc_num + ", mem_id=" + mem_id + ", post_num=" + post_num + ", cmt_ctnt="
				+ cmt_ctnt + ", cmt_date=" + cmt_date + "]";
	}

	public PCommentVO(int pc_num, String mem_id, int post_num, String cmt_ctnt, Date cmt_date) {
		super();
		this.pc_num = pc_num;
		this.mem_id = mem_id;
		this.post_num = post_num;
		this.cmt_ctnt = cmt_ctnt;
		this.cmt_date = cmt_date;
	}

	public int getPc_num() {
		return pc_num;
	}

	public void setPc_num(int pc_num) {
		this.pc_num = pc_num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getPost_num() {
		return post_num;
	}

	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}

	public String getCmt_ctnt() {
		return cmt_ctnt;
	}

	public void setCmt_ctnt(String cmt_ctnt) {
		this.cmt_ctnt = cmt_ctnt;
	}

	public Date getCmt_date() {
		return cmt_date;
	}

	public void setCmt_date(Date cmt_date) {
		this.cmt_date = cmt_date;
	}
	
}	