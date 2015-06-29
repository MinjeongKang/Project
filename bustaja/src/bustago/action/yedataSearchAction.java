package bustago.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.bean.AdminCkBean;
import bustago.bean.BusSearchBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class yedataSearchAction implements Action{

	private String bnumber;
	private List<BusSearchBean> buslist;
	private List<AdminCkBean>yedatalist;
	
	


	public List<BusSearchBean> getBuslist() {
		return buslist;
	}




	public void setBuslist(List<BusSearchBean> buslist) {
		this.buslist = buslist;
	}




	public String getBnumber() {
		return bnumber;
	}




	public void setBnumber(String bnumber) {
		this.bnumber = bnumber;
	}








	public List<AdminCkBean> getYedatalist() {
		return yedatalist;
	}




	public void setYedatalist(List<AdminCkBean> yedatalist) {
		this.yedatalist = yedatalist;
	}




	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.setAttribute("bnumber", bnumber);
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("bnumber", bnumber);  //카드번호 
		System.out.println(bnumber);
		buslist= BoardDao.yeBusSearch(map);   //버스 예매 정보
		yedatalist= BoardDao.yedataSerch(map);//버스 결제 정보		
		
		System.out.println("buslist"+buslist);
		System.out.println("yedatalist"+yedatalist);
		
		return SUCCESS;
	}

	
}
