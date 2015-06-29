package bustago.action;

import java.util.HashMap;
import java.util.List;

import bustago.bean.BoardBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class NoticeSearchAction implements Action{

	private List<BoardBean>Noticelist;
	
	private String selectText;
	private String seOptionData;
	
	
	public List<BoardBean> getNoticelist() {
		return Noticelist;
	}




	public void setNoticelist(List<BoardBean> noticelist) {
		this.Noticelist = noticelist;
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
		

		HashMap<Object, Object>map = new HashMap<Object, Object>();
	
		map.put("seOptionData", seOptionData);
		map.put("selectText", selectText);
		
		System.out.println("seOptionData"+seOptionData);
		System.out.println("selectText"+selectText);
		
		Noticelist= BoardDao.searchNotice(map);
		System.out.println(Noticelist);
		
		
		return SUCCESS;
	}

	
	
}
