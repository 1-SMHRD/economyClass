package dao;

import java.util.Date;

public class ReviewVO {

	private int rv_num;
	private int wt_id;
	private String mem_id;
	private String rv_ctnt;
	private int rv_like;
	private Date rv_date = new Date();
	private int rv_score;

	public ReviewVO() {

	}

	@Override
	public String toString() {
		return "ReviewVO [rv_num=" + rv_num + ", wt_id=" + wt_id + ", mem_id=" + mem_id + ", rv_ctnt=" + rv_ctnt
				+ ", rv_like=" + rv_like + ", rv_date=" + rv_date + ", rv_score=" + rv_score + "]";
	}

	public ReviewVO(int rv_num, int wt_id, String mem_id, String rv_ctnt, int rv_like, Date rv_date, int rv_score) {
		super();
		this.rv_num = rv_num;
		this.wt_id = wt_id;
		this.mem_id = mem_id;
		this.rv_ctnt = rv_ctnt;
		this.rv_like = rv_like;
		this.rv_date = rv_date;
		this.rv_score = rv_score;
	}

	public int getRv_num() {
		return rv_num;
	}

	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}

	public int getWt_id() {
		return wt_id;
	}

	public void setWt_id(int wt_id) {
		this.wt_id = wt_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getRv_ctnt() {
		return rv_ctnt;
	}

	public void setRv_ctnt(String rv_ctnt) {
		this.rv_ctnt = rv_ctnt;
	}

	public int getRv_like() {
		return rv_like;
	}

	public void setRv_like(int rv_like) {
		this.rv_like = rv_like;
	}

	public Date getRv_date() {
		return rv_date;
	}

	public void setRv_date(Date rv_date) {
		this.rv_date = rv_date;
	}

	public int getRv_score() {
		return rv_score;
	}

	public void setRv_score(int rv_score) {
		this.rv_score = rv_score;
	}

}
