package bustago.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bustago.bean.cardBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class cardAction implements Action, Preparable,ModelDriven<cardBean>{
	private cardBean bean;
	
	public cardBean getBean() {
		return bean;
	}

	public void setBean(cardBean bean) {
		this.bean = bean;
	}
	@Override
	public cardBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean=new cardBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
	

		BoardDao.insertCard(bean);
		return SUCCESS;
	}

	

}
