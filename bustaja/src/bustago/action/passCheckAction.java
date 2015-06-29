package bustago.action;

import java.util.HashMap;
import java.util.List;

import bustago.bean.MemberBean;
import bustago.dao.MemberDao;

import com.opensymphony.xwork2.Action;

public class passCheckAction implements Action {
	private MemberBean pbean;
	private String M_ID;
	private String M_NAME;
	private String M_EMAIL;

	public MemberBean getPbean() {
		return pbean;
	}

	public void setPbean(MemberBean pbean) {
		this.pbean = pbean;
	}

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

	public String getM_NAME() {
		return M_NAME;
	}

	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}

	public String getM_EMAIL() {
		return M_EMAIL;
	}

	public void setM_EMAIL(String m_EMAIL) {
		M_EMAIL = m_EMAIL;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, String> idmap = new HashMap<String, String>();
		idmap.put("M_ID", M_ID);
		idmap.put("M_NAME", M_NAME);
		idmap.put("M_EMAIL", M_EMAIL);
		pbean = MemberDao.selectCheck2(M_ID);
		if (MemberDao.idCheck(idmap)) {
			// HttpSession session =
			// ServletActionContext.getRequest().getSession();
			// session.setAttribute("M_ID", M_ID);
			// session.setMaxInactiveInterval(60);
			return SUCCESS;
		}
		return "fail";
	}

}
