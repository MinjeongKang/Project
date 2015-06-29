package bustago.action;

import bustago.dao.MemberDao;

import com.opensymphony.xwork2.Action;

public class DisplayName implements Action{

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//name = MemberDao.DisplayName();
		return SUCCESS;
	}
	
	
	
}
