package dao;

import java.util.Date;

public class RCommentVO {

	private int rc_num;
	private String mem_id;
	private int rv_num;
	private String cmt_ctnt;
	private Date cmt_date = new Date();
	
	public RCommentVO() {
		
	}

	@Override
	public String toString() {
		return "RCommentVO [rc_num=" + rc_num + ", mem_id=" + mem_id + ", rv_num=" + rv_num + ", cmt_ctnt=" + cmt_ctnt
				+ ", cmt_date=" + cmt_date + "]";
	}

	public RCommentVO(int rc_num, String mem_id, int rv_num, String cmt_ctnt, Date cmt_date) {
		super();
		this.rc_num = rc_num;
		this.mem_id = mem_id;
		this.rv_num = rv_num;
		this.cmt_ctnt = cmt_ctnt;
		this.cmt_date = cmt_date;
	}

	public int getRc_num() {
		return rc_num;
	}

	public void setRc_num(int rc_num) {
		this.rc_num = rc_num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getRv_num() {
		return rv_num;
	}

	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
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
