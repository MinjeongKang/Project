package bustago.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.bean.LostBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class lostSaveModifyAction implements Preparable,ModelDriven<LostBean>{


	private LostBean lostbean;

	public LostBean getLostbean() {
		return lostbean;
	}
	
	public void setLostbean(LostBean lostbean) {
		this.lostbean = lostbean;
	}
	
	
	
	@Override
	public LostBean getModel() {
		// TODO Auto-generated method stub
		return lostbean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.lostbean=new LostBean();
	}
	
	
	public String execute(){
		BoardDao.lostSaveModifyUpdate(lostbean);
		
		return "success";	
	}



	
}
