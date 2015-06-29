package bustago.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class yeDataAction implements Action{

	private String adultCount;
	private String childCount;
	private String avaseat;
	private String bus_no;
	private String totalcost;
	private String y_id;
	private String seat;
	private int cnt;
	
	public int getCnt() {
		return cnt;
	}



	public void setCnt(int cnt) {
		this.cnt = cnt;
	}



	public String getSeat() {
		return seat;
	}



	public void setSeat(String seat) {
		this.seat = seat;
	}



	public String getY_id() {
		return y_id;
	}



	public void setY_id(String y_id) {
		this.y_id = y_id;
	}



	public String getTotalcost() {
		return totalcost;
	}



	public void setTotalcost(String totalcost) {
		this.totalcost = totalcost;
	}



	public String getBus_no() {
		return bus_no;
	}



	public void setBus_no(String bus_no) {
		this.bus_no = bus_no;
	}



	public String getAdultCount() {
		return adultCount;
	}



	public void setAdultCount(String adultCount) {
		this.adultCount = adultCount;
	}



	public String getChildCount() {
		return childCount;
	}



	public void setChildCount(String childCount) {
		this.childCount = childCount;
	}



	public String getAvaseat() {
		return avaseat;
	}



	public void setAvaseat(String avaseat) {
		this.avaseat = avaseat;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.setAttribute("adultCount", adultCount);
		session.setAttribute("childCount", childCount);
		session.setAttribute("avaseat", avaseat);
		bus_no = (String) session.getAttribute("bus_no");
		y_id = bus_no.concat("hm");
		session.setAttribute("y_id", y_id);

		HashMap<Object, Object>map = new HashMap<Object, Object>();
		String []str = avaseat.split("/");
		cnt = str.length;
		
			
		for (int i = 0; i < str.length-1; i++) {
			map.put("seat", str[i]);
			map.put("y_id",y_id);
			map.put("bus_no",bus_no);
			BoardDao.seatCK(map);
			
		}
		map.put("bus_no", bus_no);
		map.put("cnt", cnt);
		BoardDao.updateCNT(map);
		//System.out.println(map);

		
		map.put("bus_no", bus_no);
		map.put("y_id", y_id);
		map.put("adultCount",adultCount);
		map.put("childCount",childCount);
		map.put("avaseat",avaseat);
		map.put("totalcost",totalcost);

		BoardDao.yeData(map);
		
		return SUCCESS;
	}

}
