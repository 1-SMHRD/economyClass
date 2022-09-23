package dao;

import java.util.Date;

public class DCollectionVO {
	
	private int col_wtnum;
	private int col_id;
	private int wt_id;
	private Date col_date = new Date();
	
	public DCollectionVO() {
		
	}
	
	@Override
	public String toString() {
		return "DCollectionVO [col_wtnum=" + col_wtnum + ", col_id=" + col_id + ", wt_id=" + wt_id + ", col_date="
				+ col_date + "]";
	}

	public DCollectionVO(int col_wtnum, int col_id, int wt_id, Date col_date) {
		super();
		this.col_wtnum = col_wtnum;
		this.col_id = col_id;
		this.wt_id = wt_id;
		this.col_date = col_date;
	}

	public int getCol_wtnum() {
		return col_wtnum;
	}

	public void setCol_wtnum(int col_wtnum) {
		this.col_wtnum = col_wtnum;
	}

	public int getCol_id() {
		return col_id;
	}

	public void setCol_id(int col_id) {
		this.col_id = col_id;
	}

	public int getWt_id() {
		return wt_id;
	}

	public void setWt_id(int wt_id) {
		this.wt_id = wt_id;
	}

	public Date getCol_date() {
		return col_date;
	}

	public void setCol_date(Date col_date) {
		this.col_date = col_date;
	}
	
}
