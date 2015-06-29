package bustago.action;


import bustago.bean.questionBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class questionAction implements Preparable, ModelDriven<questionBean>, Action{
	
	//bean을 has a?
	private questionBean quesList;


	
	public questionBean getQuesList() {
		return quesList;
	}
	public void setQuesList(questionBean quesList) {
		this.quesList = quesList;
	}



	@Override
	public questionBean getModel() {
		// TODO Auto-generated method stub
		return quesList;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.quesList=new questionBean();
		
		
	}
		public String execute(){	
		//upload ,insert
		BoardDao.insertData(quesList);  	// questList  입력한 값 
		System.out.println(quesList);
		
		return "success";
		
		
		
	}

}
