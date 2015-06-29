package bustago.action;

import java.util.HashMap;

import bustago.bean.MemberBean;
import bustago.dao.MemberDao;

import com.opensymphony.xwork2.Action;

public class IdCheckAction implements Action {
	private MemberBean ibean;
	private String M_NAME;
	private String M_EMAIL;

	public MemberBean getIbean() {
		return ibean;
	}

	public void setIbean(MemberBean ibean) {
		this.ibean = ibean;
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
		idmap.put("M_NAME", M_NAME);
		idmap.put("M_EMAIL", M_EMAIL);
		this.ibean = MemberDao.selectCheck(M_NAME);
		if (MemberDao.idCheck(idmap)) {
			return SUCCESS;
		}
		return "fail";
	}
}