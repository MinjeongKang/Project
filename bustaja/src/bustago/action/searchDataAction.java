package bustago.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.bean.BusComBean;
import bustago.bean.questionBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class searchDataAction implements Action{

	private List<BusComBean>testlist;

	private String selectText;
	private String seOptionData;
	

	
	
	


	public List<BusComBean> getTestlist() {
		return testlist;
	}







	public void setTestlist(List<BusComBean> testlist) {
		this.testlist = testlist;
	}







	public String getSelectText() {
		return selectText;
	}







	public void setSelectText(String selectText) {
		this.selectText = selectText;
	}











	public String getSeOptionData() {
		return seOptionData;
	}







	public void setSeOptionData(String seOptionData) {
		this.seOptionData = seOptionData;
	}







	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//HttpSession session=ServletActionContext.getRequest().getSession();
		//selectSearch = (String) session.getAttribute("selectSearch");
		
		HashMap<Object, Object>map = new HashMap<Object, Object>();
	
		map.put("seOptionData", seOptionData);
		map.put("selectText", selectText);
		
		System.out.println("seOptionData"+seOptionData);
		System.out.println("selectText"+selectText);
		
		testlist= BoardDao.searchBusCom(map);
		System.out.println(testlist);
		
		return SUCCESS;
	}

	
}
