package bustago.action;

import java.util.List;

import bustago.bean.BoardBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class AdminNoticeAction implements Action{


		private List<BoardBean> noticelist;
		
		




		public List<BoardBean> getNoticelist() {
			return noticelist;
		}






		public void setNoticelist(List<BoardBean> noticelist) {
			this.noticelist = noticelist;
		}






		@Override
		public String execute() throws Exception {
			// TODO Auto-generated method stub
			noticelist=BoardDao.adminNoticeList();
			System.out.println("Âï¾î"+noticelist);
			return SUCCESS;
		}


	}

