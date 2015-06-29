package bustago.action;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class CkFlagAction implements Action{

	private String y_no;

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
		y_no = (String) session.getAttribute("y_id");
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("y_no", y_no);
		BoardDao.ckFlag(map);
		return SUCCESS;
	}
	
	
	
}
