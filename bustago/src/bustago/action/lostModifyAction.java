package bustago.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.bean.LostBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class lostModifyAction implements Action{

	private int l_no;
	private List<LostBean> list;
	
	public int getL_no() {
		return l_no;
	}

	public void setL_no(int l_no) {
		this.l_no = l_no;
	}

	public List<LostBean> getList() {
		return list;
	}

	public void setList(List<LostBean> list) {
		this.list = list;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=ServletActionContext.getRequest().getSession();
		l_no = (int) session.getAttribute("l_no");
		session.setMaxInactiveInterval(60);
		HashMap<Object, Object>map = new HashMap<Object,Object>();
		map.put("l_no", l_no);
		System.out.println("lostModifyAction"+map);
		this.list=BoardDao.selectLostInfoView(map);
		System.out.println("lostModifyAction"+list);
		return SUCCESS;
	}

	
	
}
