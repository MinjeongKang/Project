package bustago.action;

import java.util.List;

import bustago.bean.BoardBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class noticeList implements Action{
	private List<BoardBean>list;

	public List<BoardBean> getList() {
		return list;
	}
	public void setList(List<BoardBean> list) {
		this.list = list;
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		list=BoardDao.selectNoticeBoard(null);
		return SUCCESS;
	}
}
