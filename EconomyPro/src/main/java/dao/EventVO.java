package dao;

public class EventVO {
	
	private int event_id;
	private String plat_id;
	private String event_banner;
	private String event_link;
	
	public EventVO() {
		
	}

	@Override
	public String toString() {
		return "EventVO [event_id=" + event_id + ", plat_id=" + plat_id + ", event_banner=" + event_banner
				+ ", event_link=" + event_link + "]";
	}

	public EventVO(int event_id, String plat_id, String event_banner, String event_link) {
		super();
		this.event_id = event_id;
		this.plat_id = plat_id;
		this.event_banner = event_banner;
		this.event_link = event_link;
	}

	public int getEvent_id() {
		return event_id;
	}

	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}

	public String getPlat_id() {
		return plat_id;
	}

	public void setPlat_id(String plat_id) {
		this.plat_id = plat_id;
	}

	public String getEvent_banner() {
		return event_banner;
	}

	public void setEvent_banner(String event_banner) {
		this.event_banner = event_banner;
	}

	public String getEvent_link() {
		return event_link;
	}

	public void setEvent_link(String event_link) {
		this.event_link = event_link;
	}
	
}
