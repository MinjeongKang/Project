package bustago.bean;

public class BusComBean {
	private int	   bc_no;
	private String c_name;
	private String c_tel;
	private String c_addr;
	private String c_home;
	
	public int getBc_no() {
		return bc_no;
	}
	public void setBc_no(int bc_no) {
		this.bc_no = bc_no;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_tel() {
		return c_tel;
	}
	public void setC_tel(String c_tel) {
		this.c_tel = c_tel;
	}
	public String getC_addr() {
		return c_addr;
	}
	public void setC_addr(String c_addr) {
		this.c_addr = c_addr;
	}
	public String getC_home() {
		return c_home;
	}
	public void setC_home(String c_home) {
		this.c_home = c_home;
	}
	
	@Override
	public String toString() {
		return "busComBean [bc_no=" + bc_no + ", c_name=" + c_name + ", c_tel="
				+ c_tel + ", c_addr=" + c_addr + ", c_home=" + c_home + "]";
	}
	
	
	
}
