package bustago.action;

import java.util.List;

import bustago.bean.AdminCkBean;
import bustago.bean.BoardBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class AdminCKList implements Action{

	private List<AdminCkBean>cklist;
	
	
	public List<AdminCkBean> getCklist() {
		return cklist;
	}


	public void setCklist(List<AdminCkBean> cklist) {
		this.cklist = cklist;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		cklist=BoardDao.adminckList();
		
		return SUCCESS;
	}

	
	
}
