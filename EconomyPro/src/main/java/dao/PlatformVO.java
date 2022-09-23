package dao;

public class PlatformVO {
	
	private String plat_id;
	private String plat_name;
	private String plat_link;
	private String plat_logo;
	
	public PlatformVO() {
		
	}

	@Override
	public String toString() {
		return "PlatformVO [plat_id=" + plat_id + ", plat_name=" + plat_name + ", plat_link=" + plat_link
				+ ", plat_logo=" + plat_logo + "]";
	}

	public PlatformVO(String plat_id, String plat_name, String plat_link, String plat_logo) {
		super();
		this.plat_id = plat_id;
		this.plat_name = plat_name;
		this.plat_link = plat_link;
		this.plat_logo = plat_logo;
	}

	public String getPlat_id() {
		return plat_id;
	}

	public void setPlat_id(String plat_id) {
		this.plat_id = plat_id;
	}

	public String getPlat_name() {
		return plat_name;
	}

	public void setPlat_name(String plat_name) {
		this.plat_name = plat_name;
	}

	public String getPlat_link() {
		return plat_link;
	}

	public void setPlat_link(String plat_link) {
		this.plat_link = plat_link;
	}

	public String getPlat_logo() {
		return plat_logo;
	}

	public void setPlat_logo(String plat_logo) {
		this.plat_logo = plat_logo;
	}
	
}
