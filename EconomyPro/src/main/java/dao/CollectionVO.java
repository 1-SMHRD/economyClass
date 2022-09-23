package dao;

public class CollectionVO {
	
	private int col_id;
	private String col_name;
	private String col_content;
	private String col_banner;
	
	public CollectionVO() {
		
	}

	@Override
	public String toString() {
		return "CollectionVO [col_id=" + col_id + ", col_name=" + col_name + ", col_content=" + col_content
				+ ", col_banner=" + col_banner + "]";
	}

	public CollectionVO(int col_id, String col_name, String col_content, String col_banner) {
		super();
		this.col_id = col_id;
		this.col_name = col_name;
		this.col_content = col_content;
		this.col_banner = col_banner;
	}

	public int getCol_id() {
		return col_id;
	}

	public void setCol_id(int col_id) {
		this.col_id = col_id;
	}

	public String getCol_name() {
		return col_name;
	}

	public void setCol_name(String col_name) {
		this.col_name = col_name;
	}

	public String getCol_content() {
		return col_content;
	}

	public void setCol_content(String col_content) {
		this.col_content = col_content;
	}

	public String getCol_banner() {
		return col_banner;
	}

	public void setCol_banner(String col_banner) {
		this.col_banner = col_banner;
	}
	
	
}
