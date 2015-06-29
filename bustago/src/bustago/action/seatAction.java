package bustago.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.bean.SeatBean;
import bustago.dao.SeatDao;

import com.opensymphony.xwork2.Action;

public class seatAction implements Action {

	private List<SeatBean> busseatList;
	

	public List<SeatBean> getBusseatList() {
		return busseatList;
	}

	public void setBusseatList(List<SeatBean> busseatList) {
		this.busseatList = busseatList;
	}

	@Override
	public String toString() {
		return "seatAction [busseatList=" + busseatList + "]";
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub

		busseatList = SeatDao.BusSeat(null);
		return SUCCESS;
	}
}
