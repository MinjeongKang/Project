package bustago.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import bustago.bean.MemberBean;
import bustago.dao.MemberDao;

public class mypageAction implements Action {
	private MemberBean mbean;
	private String M_ID;

	public MemberBean getMbean() {
		return mbean;
	}

	public void setMbean(MemberBean mbean) {
		this.mbean = mbean;
	}

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = ServletActionContext.getRequest().getSession();
		M_ID = (String) session.getAttribute("M_ID");
		if (M_ID != null) {
			mbean = MemberDao.selectCheck2(M_ID);
			return SUCCESS;
		}
		return "fail";
	}
}
