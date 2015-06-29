package bustago.action;

import java.util.HashMap;
import java.util.List;

import bustago.bean.BoardBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;

public class NoticeListAction implements Action{
	private String category;
	private List<BoardBean>blist;
	private StringBuffer sbf=new StringBuffer();

	public StringBuffer getSbf() {
		return sbf;
	}
	public void setSbf(StringBuffer sbf) {
		this.sbf = sbf;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public List<BoardBean> getBlist() {
		return blist;
	}
	public void setBlist(List<BoardBean> blist) {
		this.blist = blist;
	}
	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		   HashMap<Object, Object>map=new HashMap<Object, Object>();
		   map.put("category", category);
		   blist=BoardDao.selectNoticeBoard(map);
		  // System.out.println(blist);
		   sbf.append("[ ");   
		      for (int i = 0; i < blist.size(); i++) {
		    	  BoardBean b=blist.get(i);
		         if(i==blist.size()-1){
		        	 sbf.append("{\"n_title\":"+"\""+b.getN_title()+"\""+",\"n_contents\":"+"\""+b.getN_contents()+"\""+",\"n_category\":"+"\""+b.getN_category()+"\""+"\""+",\"n_hit\":"+"\""+b.getN_hit()+"\""+",\"regdate\":"+"\""+b.getRegdate()+"\""+"} ");
		         }else{
		        	sbf.append("{\"n_title\":"+"\""+b.getN_title()+"\""+",\"n_contents\":"+"\""+b.getN_contents()+"\""+",\"n_category\":"+"\""+b.getN_category()+"\""+"\""+",\"n_hit\":"+"\""+b.getN_hit()+"\""+",\"regdate\":"+"\""+b.getRegdate()+"\""+"}, ");   
		         }
		      }
		      System.out.println(blist);
		      sbf.append("] ");
		return SUCCESS;
	}
	

}
