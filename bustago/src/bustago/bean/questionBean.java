package bustago.bean;

public class questionBean {


	private String q_type;
	private String q_title;
	private String q_contents;
	private String q_data;
	private String q_email;
	private String q_name;
	
	

	public String getQ_email() {
		return q_email;
	}
	public void setQ_email(String q_email) {
		this.q_email = q_email;
	}
	public String getQ_name() {
		return q_name;
	}
	public void setQ_name(String q_name) {
		this.q_name = q_name;
	}
	public String getQ_type() {
		return q_type;
	}
	public void setQ_type(String q_type) {
		this.q_type = q_type;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_contents() {
		return q_contents;
	}
	public void setQ_contents(String q_contents) {
		this.q_contents = q_contents;
	}
	public String getq_data() {
		return q_data;
	}
	public void setq_data(String q_data) {
		this.q_data = q_data;
	}
	@Override
	public String toString() {
		return "questionBean [q_type=" + q_type + ", q_title=" + q_title
				+ ", q_contents=" + q_contents + ", q_data=" + q_data
				+ ", q_email=" + q_email + ", q_name=" + q_name + "]";
	}

	 
	

}
