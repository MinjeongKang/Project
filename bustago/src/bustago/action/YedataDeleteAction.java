package bustago.action;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class YedataDeleteAction implements Action{

	private String y_no;
	private String y_sit;
	private int y_sitCnt;
	
	
	
	
	
	
	


	public int getY_sitCnt() {
		return y_sitCnt;
	}



	public void setY_sitCnt(int y_sitCnt) {
		this.y_sitCnt = y_sitCnt;
	}



	public String getY_sit() {
		return y_sit;
	}



	public void setY_sit(String y_sit) {
		this.y_sit = y_sit;
	}



	public String getY_no() {
		return y_no;
	}



	public void setY_no(String y_no) {
		this.y_no = y_no;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.setAttribute("y_no", y_no);
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("y_no", y_no);
		y_sit = BoardDao.selectSeatNo(map); //좌석 번호 가지고 오기 
		String []str = y_sit.split("/");
		
	for (int i = 0; i < str.length-1; i++) {
		map.put("seat", str[i]);
		BoardDao.seatUNCK(map);
	}	
		
	
		BoardDao.deleteYedataPay(map);
		BoardDao.deleteYedata(map);
		return SUCCESS;
	}

	
	
}
