package bustago.bean;

public class SeatBean {

	private int seat;
	private String flag;
	private String y_id;
	private String b_no;
	
	

	public String getY_id() {
		return y_id;
	}

	public void setY_id(String y_id) {
		this.y_id = y_id;
	}

	public String getB_no() {
		return b_no;
	}

	public void setB_no(String b_no) {
		this.b_no = b_no;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		return "SeatBean [seat=" + seat + ", flag=" + flag + ", y_id=" + y_id
				+ ", b_no=" + b_no + "]";
	}



}
