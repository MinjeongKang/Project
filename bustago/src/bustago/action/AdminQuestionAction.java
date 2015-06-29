package bustago.action;

import java.util.List;

import com.opensymphony.xwork2.Action;

import bustago.bean.questionBean;
import bustago.dao.BoardDao;

public class AdminQuestionAction implements Action{


	private List<questionBean> questionlist;
	
	




	public List<questionBean> getQuestionlist() {
		return questionlist;
	}






	public void setQuestionlist(List<questionBean> questionlist) {
		this.questionlist = questionlist;
	}






	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		questionlist=BoardDao.adminQuestionList();
		System.out.println("Âï¾î"+questionlist);
		return SUCCESS;
	}


}
