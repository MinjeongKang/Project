package bustago.action;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class lostLoginCheckAction implements Action{
	
	private int l_no;
	private String l_pw;
	static String job;
	
	
	

	public String getJob() {
		return job;
	}



	public void setJob(String job) {
		this.job = job;
	}



	public int getL_no() {
		return l_no;
	}



	public void setL_no(int l_no) {
		this.l_no = l_no;
	}



	public String getL_pw() {
		return l_pw;
	}



	public void setL_pw(String l_pw) {
		this.l_pw = l_pw;
	}



	@Override
	public String execute() throws Exception {
		HashMap<Object, Object>map=new HashMap<Object, Object>();
		HttpSession session=ServletActionContext.getRequest().getSession();
		l_no = (int) session.getAttribute("l_no");
		map.put("l_no", l_no);
		map.put("l_pw", l_pw);
		
		if(BoardDao.lostLoginCheck(map)){
			//true
		 return job;
		}
		return "fail";
	}
	
}

;
