package bustago.action;

import com.opensymphony.xwork2.Action;

public class b implements Action {

	private String seatCnt;

	public String getAvaseat() {
		return seatCnt;
	}

	public void setAvaseat(String seatCnt) {
		this.seatCnt = seatCnt;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

}
