package dao;

import java.util.Date;

public class WebtoonVO {
	
	private int wt_id;
	private String plat_id;
	private String wt_title;
	private String wt_auth;
	private String wt_gen;
	private String wt_thum;
	private String wt_detail;
	private Date wt_f_date = new Date();
	private String wt_grd;
	private int wt_l_cnt;
	private int wt_d_cnt;
	private String up_title;
	private String up_date;
	
	public WebtoonVO() {
		
	}

	@Override
	public String toString() {
		return "WebtoonVO [wt_id=" + wt_id + ", plat_id=" + plat_id + ", wt_title=" + wt_title + ", wt_auth=" + wt_auth
				+ ", wt_gen=" + wt_gen + ", wt_thum=" + wt_thum + ", wt_detail=" + wt_detail + ", wt_f_date="
				+ wt_f_date + ", wt_grd=" + wt_grd + ", wt_l_cnt=" + wt_l_cnt + ", wt_d_cnt=" + wt_d_cnt + ", up_title="
				+ up_title + ", up_date=" + up_date + "]";
	}

	public WebtoonVO(int wt_id, String plat_id, String wt_title, String wt_auth, String wt_gen, String wt_thum,
			String wt_detail, Date wt_f_date, String wt_grd, int wt_l_cnt, int wt_d_cnt, String up_title,
			String up_date) {
		super();
		this.wt_id = wt_id;
		this.plat_id = plat_id;
		this.wt_title = wt_title;
		this.wt_auth = wt_auth;
		this.wt_gen = wt_gen;
		this.wt_thum = wt_thum;
		this.wt_detail = wt_detail;
		this.wt_f_date = wt_f_date;
		this.wt_grd = wt_grd;
		this.wt_l_cnt = wt_l_cnt;
		this.wt_d_cnt = wt_d_cnt;
		this.up_title = up_title;
		this.up_date = up_date;
	}

	public int getWt_id() {
		return wt_id;
	}

	public void setWt_id(int wt_id) {
		this.wt_id = wt_id;
	}

	public String getPlat_id() {
		return plat_id;
	}

	public void setPlat_id(String plat_id) {
		this.plat_id = plat_id;
	}

	public String getWt_title() {
		return wt_title;
	}

	public void setWt_title(String wt_title) {
		this.wt_title = wt_title;
	}

	public String getWt_auth() {
		return wt_auth;
	}

	public void setWt_auth(String wt_auth) {
		this.wt_auth = wt_auth;
	}

	public String getWt_gen() {
		return wt_gen;
	}

	public void setWt_gen(String wt_gen) {
		this.wt_gen = wt_gen;
	}

	public String getWt_thum() {
		return wt_thum;
	}

	public void setWt_thum(String wt_thum) {
		this.wt_thum = wt_thum;
	}

	public String getWt_detail() {
		return wt_detail;
	}

	public void setWt_detail(String wt_detail) {
		this.wt_detail = wt_detail;
	}

	public Date getWt_f_date() {
		return wt_f_date;
	}

	public void setWt_f_date(Date wt_f_date) {
		this.wt_f_date = wt_f_date;
	}

	public String getWt_grd() {
		return wt_grd;
	}

	public void setWt_grd(String wt_grd) {
		this.wt_grd = wt_grd;
	}

	public int getWt_l_cnt() {
		return wt_l_cnt;
	}

	public void setWt_l_cnt(int wt_l_cnt) {
		this.wt_l_cnt = wt_l_cnt;
	}

	public int getWt_d_cnt() {
		return wt_d_cnt;
	}

	public void setWt_d_cnt(int wt_d_cnt) {
		this.wt_d_cnt = wt_d_cnt;
	}

	public String getUp_title() {
		return up_title;
	}

	public void setUp_title(String up_title) {
		this.up_title = up_title;
	}

	public String getUp_date() {
		return up_date;
	}

	public void setUp_date(String up_date) {
		this.up_date = up_date;
	}
	
	

}
