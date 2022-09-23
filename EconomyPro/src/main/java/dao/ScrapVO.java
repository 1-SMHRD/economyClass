package dao;

public class ScrapVO {
	
	private int scr_num;
	private int wt_id;
	private String mem_id;
	
	public ScrapVO() {
		
	}

	@Override
	public String toString() {
		return "ScrapVO [scr_num=" + scr_num + ", wt_id=" + wt_id + ", mem_id=" + mem_id + "]";
	}

	public ScrapVO(int scr_num, int wt_id, String mem_id) {
		super();
		this.scr_num = scr_num;
		this.wt_id = wt_id;
		this.mem_id = mem_id;
	}

	public int getScr_num() {
		return scr_num;
	}

	public void setScr_num(int scr_num) {
		this.scr_num = scr_num;
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
	
}
