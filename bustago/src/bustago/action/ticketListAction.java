package bustago.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import bustago.bean.BoardBean;
import bustago.bean.BusSearchBean;
import bustago.dao.BoardDao;

public class ticketListAction implements Action{

	private String bus_no;
	private String sub_no;


	public String getSub_no() {
		return sub_no;
	}


	public void setSub_no(String sub_no) {
		this.sub_no = sub_no;
	}


	public String getBus_no() {
		return bus_no;
	}


	public void setBus_no(String bus_no) {
		this.bus_no = bus_no;
	}


	
	
	private List<BusSearchBean>searchlist;

	public List<BusSearchBean> getSearchlist() {
		return searchlist;
	}


	public void setSearchlist(List<BusSearchBean> searchlist) {
		this.searchlist = searchlist;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session=ServletActionContext.getRequest().getSession();
	
		HashMap<Object,Object>map=new HashMap<Object, Object>();
		
		map.put("bus_no", bus_no);
		//map.put("bus_no", bus_no);
		//map.put("sub_no",sub_no=bus_no.substring(0, 10));
		
		//var sub_no=($("input[id=bus_no]").val().substr(0,10));

		System.out.println(bus_no);

		searchlist=BoardDao.searchBus(map);
		
		System.out.println("리턴되는="+searchlist);
		session.setAttribute("bus_no", bus_no);
		
		//HttpSession session=ServletActionContext.getRequest().getSession();
		//session.setAttribute("bus_no", bus_no);
		//session.setAttribute("sub_no", bus_no.substring(0, 10));
	
		//session.setMaxInactiveInterval(60);
		return SUCCESS;
	}




	
}
