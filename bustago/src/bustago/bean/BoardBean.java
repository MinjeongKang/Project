package bustago.bean;

public class BoardBean {
	private int n_no;
	private String n_title;
	private String n_contents;
	private String n_category;
	private int n_hit;
	private String regdate;
	

	public String getN_category() {
		return n_category;
	}
	public void setN_category(String n_category) {
		this.n_category = n_category;
	}
	public int getN_no() {
		return n_no;
	}
	public void setN_no(int n_no) {
		this.n_no = n_no;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_contents() {
		return n_contents;
	}
	public void setN_contents(String n_contents) {
		this.n_contents = n_contents;
	}
	public int getN_hit() {
		return n_hit;
	}
	public void setN_hit(int n_hit) {
		this.n_hit = n_hit;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "BoardBean [n_no=" + n_no + ", n_title=" + n_title
				+ ", n_contents=" + n_contents + ", n_category=" + n_category
				+ ", n_hit=" + n_hit + ", regdate=" + regdate + "]";
	}

}
