package bustago.action;

import java.util.List;

import bustago.bean.AdminMemberBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class AdminMemberAction implements Action{

	private List<AdminMemberBean> memberlist;
	
	



	public List<AdminMemberBean> getMemberlist() {
		return memberlist;
	}





	public void setMemberlist(List<AdminMemberBean> memberlist) {
		this.memberlist = memberlist;
	}





	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		memberlist=BoardDao.adminMemberList();
		System.out.println("Âï¾î"+memberlist);
		return SUCCESS;
	}

	
	
}
