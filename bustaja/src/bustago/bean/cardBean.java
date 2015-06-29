package bustago.bean;

public class cardBean {

	private String y_id;
	private String c_type;
	private String c_name;
	private String c_no;
	private String c_age;
	private String totalcost;

	public cardBean() {
		super();
	}

	public cardBean(String y_id, String c_type, String c_name,
			String c_no, String c_age, String totalcost) {
		super();
	
		this.y_id = y_id;
		this.c_type = c_type;
		this.c_name = c_name;
		this.c_no = c_no;
		this.c_age = c_age;
		this.totalcost = totalcost;
	}



	public String getTotalcost() {
		return totalcost;
	}

	public void setTotalcost(String totalcost) {
		this.totalcost = totalcost;
	}


	public String getY_id() {
		return y_id;
	}

	public void setY_id(String y_id) {
		this.y_id = y_id;
	}

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_no() {
		return c_no;
	}

	public void setC_no(String c_no) {
		this.c_no = c_no;
	}

	public String getC_age() {
		return c_age;
	}

	public void setC_age(String c_age) {
		this.c_age = c_age;
	}


	@Override
	public String toString() {
		return "cardBean [ y_id=" + y_id + ", c_type="
				+ c_type + ", c_name=" + c_name + ", c_no=" + c_no + ", c_age="
				+ c_age + ", totalcost=" + totalcost + "]";
	}

}
