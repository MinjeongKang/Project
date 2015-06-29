package bustago.action;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.dao.MemberDao;

import com.opensymphony.xwork2.Action;

public class loginAction implements Action {
	private String M_ID;
	private String M_PW;

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

	public String getM_PW() {
		return M_PW;
	}

	public void setM_PW(String m_PW) {
		M_PW = m_PW;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("M_ID", M_ID);
		map.put("M_PW", M_PW);
		if (MemberDao.loginCheck(map)) {
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("M_ID", M_ID);
			session.setMaxInactiveInterval(60 * 60);
			return SUCCESS;
		}
		return "fail";
	}
}
