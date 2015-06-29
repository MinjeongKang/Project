package bustago.action;

import java.util.HashMap;
import java.util.List;

import bustago.bean.BusComBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class comListAction implements Action{
		private List<BusComBean>bclist;
		private int currentPage=1;
		private StringBuffer sB=new StringBuffer();
		
		public int getCurrentPage() {
			return currentPage;
		}
		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}
		public StringBuffer getsB() {
			return sB;
		}
		public void setsB(StringBuffer sB) {
			this.sB = sB;
		}
		public List<BusComBean> getBclist() {
			return bclist;
		}
		public void setBclist(List<BusComBean> bclist) {
			this.bclist = bclist;
		}
		public void pageing(){
			try{
			   int pageScale=10; //tuple or page NumberCount
			   int totalRow=0;
			   totalRow=BoardDao.gettotalRow();
			   int totalPage=totalRow%pageScale==0?(totalRow/pageScale):(totalRow/pageScale)+1;
			   if(totalRow==0)totalPage=1;
			   
			   int start=1+(currentPage-1)*pageScale;
			   int end=pageScale+(currentPage-1)*pageScale;
			   
			   int block=(currentPage%pageScale)==0?
					   currentPage/pageScale:(currentPage/pageScale)+1;
			   int startPage=1+(block-1)*pageScale;
			   int endPage=pageScale+(block-1)*pageScale;
			   if(endPage>=totalPage){
				   endPage=totalPage;
			   }   
			   HashMap<Object,Object>map=new HashMap<Object,Object>();
			   map.put("start",start);
			   map.put("end",end);
			   bclist=BoardDao.selectBusComList(map);
			   sB.append("<a href='comListAction.action?currentPage=1'><img src='/images/common/paging_first.gif' /></a>");
			   if(block>1){
			   sB.append("<a href='comListAction.action?currentPage="+(startPage-1)+"'><img src='/images/common/paging_prev.gif' /></a>");
			   }else{
			   sB.append("<a href='#'><img src='/images/common/paging_prev.gif' /></a>");
			   }
			   sB.append("<span>");
			   for(int i=startPage;i<=endPage;i++){
				   if(currentPage==i){
					   sB.append("<font size=3 color=red>["+i+"]</font>");
				   }else{
			   sB.append("<a href='comListAction.action?currentPage="+i+"'>["+i+"]</a>");
				   }
			   }
			   sB.append("</span>");
			   if(endPage<totalPage){
			   sB.append("<a href='comListAction.action?currentPage="+(endPage+1)+"'><img src='/images/common/paging_next.gif' /></a>");
			   }else{
			   sB.append("<a href='#'><img src='/images/common/paging_next.gif' /></a>");
			   }
			   sB.append("<a href='comListAction.action?currentPage="+totalPage+"'><img src='/images/common/paging_last.gif' /></a>");
			}catch(Exception e){
				e.printStackTrace();
			}
		}

		public String execute() throws Exception {
			// TODO Auto-generated method stub
			pageing();
			return SUCCESS;
		}
		


	}


