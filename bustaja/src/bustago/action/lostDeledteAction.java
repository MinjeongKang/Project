package bustago.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class lostDeledteAction implements Action{
//삭제 액션 
	
	private int l_no;
	
	public int getL_no() {
		return l_no;
	}
	public void setL_no(int l_no) {
		this.l_no = l_no;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=ServletActionContext.getRequest().getSession();
		l_no = (int) session.getAttribute("l_no");
		System.out.println("Action의 삭제시 글번호"+l_no);
		  BoardDao.lostDelete(l_no);
		return SUCCESS;
	}
	
	
	
}
