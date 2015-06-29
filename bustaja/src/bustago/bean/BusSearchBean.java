package bustago.bean;

public class BusSearchBean {

	private String b_time;
	private String e_time;
	private String b_start;
	private String b_end;
	private String b_grade;
	private String b_date;
	private int 	total_sit;
	private int 	count_sit;
	
	
	
	public String getE_time() {
		return e_time;
	}
	public void setE_time(String e_time) {
		this.e_time = e_time;
	}
	public String getB_time() {
		return b_time;
	}
	public void setB_time(String b_time) {
		this.b_time = b_time;
	}
	public String getB_start() {
		return b_start;
	}
	
	
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public void setB_start(String b_start) {
		this.b_start = b_start;
	}
	public String getB_end() {
		return b_end;
	}
	public void setB_end(String b_end) {
		this.b_end = b_end;
	}
	public String getB_grade() {
		return b_grade;
	}
	public void setB_grade(String b_grade) {
		this.b_grade = b_grade;
	}
	public int getTotal_sit() {
		return total_sit;
	}
	public void setTotal_sit(int total_sit) {
		this.total_sit = total_sit;
	}
	public int getCount_sit() {
		return count_sit;
	}
	public void setCount_sit(int count_sit) {
		this.count_sit = count_sit;
	}
	@Override
	public String toString() {
		return "BusSearchBean [b_time=" + b_time + ", b_start=" + b_start
				+ ", b_end=" + b_end + ", b_grade=" + b_grade + ", b_date="
				+ b_date + ", total_sit=" + total_sit + ", count_sit="
				+ count_sit + "]";
	}

	
	
	

	
	
}
