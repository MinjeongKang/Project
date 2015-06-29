package bustago.action;
import java.util.HashMap;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import bustago.bean.BoardBean;
import bustago.bean.BusComBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;
public  class ListAction implements Action{
	private List<BoardBean>Noticelist;
	private int currentPage=1;
	private StringBuffer sb=new StringBuffer();

	public StringBuffer getSb() {
		return sb;
	}
	public void setSb(StringBuffer sb) {
		this.sb = sb;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public List<BoardBean> getNoticelist() {
		return Noticelist;
	}
	public void setNoticelist(List<BoardBean> noticelist) {
		Noticelist = noticelist;
	}
	public void paging(){
		try{
		   int pageScale=40; //tuple or page NumberCount
		   int totalRow=0;
		   totalRow=BoardDao.getTotalRow();
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
		   Noticelist=BoardDao.selectNotice(map);
		   sb.append("<a href='noticeAction.action?currentPage=1'><img src='/images/common/paging_first.gif' /></a>");
		   if(block>1){
		   sb.append("<a href='noticeAction.action?currentPage="+(startPage-1)+"'><img src='/images/common/paging_prev.gif' /></a>");
		   }else{
		   sb.append("<a href='#'><img src='/images/common/paging_prev.gif' /></a>");
		   }
		   sb.append("<span>");
		   for(int i=startPage;i<=endPage;i++){
			   if(currentPage==i){
				   sb.append("<font size=3 color=red>["+i+"]</font>");
			   }else{
		   sb.append("<a href='noticeAction.action?currentPage="+i+"'>["+i+"]</a>");
			   }
		   }
		   sb.append("</span>");
		   if(endPage<totalPage){
		   sb.append("<a href='noticeAction.action?currentPage="+(endPage+1)+"'><img src='/images/common/paging_next.gif' /></a>");
		   }else{
		   sb.append("<a href='#'><img src='/images/common/paging_next.gif' /></a>");
		   }
		   sb.append("<a href='noticeAction.action?currentPage="+totalPage+"'><img src='/images/common/paging_last.gif' /></a>");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		paging();
		return SUCCESS;
	}
	


}
