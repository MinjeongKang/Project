package bustago.action;

import bustago.bean.MemberBean;
import bustago.dao.MemberDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class MemberInsertAction implements Action, Preparable, ModelDriven<MemberBean> {
	private MemberBean bean;

	public MemberBean getBean() {
		return bean;
	}

	public void setBean(MemberBean bean) {
		this.bean = new MemberBean();
	}

	@Override
	public MemberBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new MemberBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		MemberDao.insertMember(bean);
		return SUCCESS;
	}
}