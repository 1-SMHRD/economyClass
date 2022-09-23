package dao;

import java.util.Date;

public class MemberVO {

	private String mem_id;
	private String mem_pw;
	private String mem_nick;
	private String mem_sns;
	private String mem_cmt;
	private String mem_img;
	private Date mem_date = new Date();
	private char mem_type;

	public MemberVO() {

	}

	@Override
	public String toString() {
		return "MemberVO [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_nick=" + mem_nick + ", mem_sns=" + mem_sns
				+ ", mem_cmt=" + mem_cmt + ", mem_img=" + mem_img + ", mem_date=" + mem_date + ", mem_type=" + mem_type
				+ "]";
	}

	public MemberVO(String mem_id, String mem_pw, String mem_nick, String mem_sns, String mem_cmt, String mem_img,
			Date mem_date, char mem_type) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_sns = mem_sns;
		this.mem_cmt = mem_cmt;
		this.mem_img = mem_img;
		this.mem_date = mem_date;
		this.mem_type = mem_type;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getMem_sns() {
		return mem_sns;
	}

	public void setMem_sns(String mem_sns) {
		this.mem_sns = mem_sns;
	}

	public String getMem_cmt() {
		return mem_cmt;
	}

	public void setMem_cmt(String mem_cmt) {
		this.mem_cmt = mem_cmt;
	}

	public String getMem_img() {
		return mem_img;
	}

	public void setMem_img(String mem_img) {
		this.mem_img = mem_img;
	}

	public Date getMem_date() {
		return mem_date;
	}

	public void setMem_date(Date mem_date) {
		this.mem_date = mem_date;
	}

	public char getMem_type() {
		return mem_type;
	}

	public void setMem_type(char mem_type) {
		this.mem_type = mem_type;
	}

}