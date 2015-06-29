package bustago.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.opensymphony.xwork2.Action;

import bustago.bean.LostBean;
import bustago.dao.BoardDao;

public class lostListAction implements Action {

	private List<LostBean> lostlist;
	private int currentPage = 1;
	private StringBuffer sbfr = new StringBuffer();

	public List<LostBean> getLostlist() {
		return lostlist;
	}

	public void setLostlist(List<LostBean> lostlist) {
		this.lostlist = lostlist;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public StringBuffer getSbfr() {
		return sbfr;
	}

	public void setSbfr(StringBuffer sbfr) {
		this.sbfr = sbfr;
	}

	public void pagiing() {
		try {
			int pageScale = 10; // tuple or page NumberCount
			int totalRow = 0;
			totalRow = BoardDao.getlostTotalRow();
			int totalPage = totalRow % pageScale == 0 ? (totalRow / pageScale)
					: (totalRow / pageScale) + 1;
			if (totalRow == 0)
				totalPage = 1;

			int start = 1 + (currentPage - 1) * pageScale;
			int end = pageScale + (currentPage - 1) * pageScale;

			int block = (currentPage % pageScale) == 0 ? currentPage
					/ pageScale : (currentPage / pageScale) + 1;
			int startPage = 1 + (block - 1) * pageScale;
			int endPage = pageScale + (block - 1) * pageScale;
			if (endPage >= totalPage) {
				endPage = totalPage;
			}
			HashMap<Object, Object> map = new HashMap<Object, Object>();
			map.put("start", start);
			map.put("end", end);
			lostlist = BoardDao.selectLostList(map);
			sbfr.append("<a href='lostListAction.action?currentPage=1'><img src='/images/common/paging_first.gif' /></a>");
			if (block > 1) {
				sbfr.append("<a href='lostListAction.action?currentPage="
						+ (startPage - 1)
						+ "'><img src='/images/common/paging_prev.gif' /></a>");
			} else {
				sbfr.append("<a href='#'><img src='/images/common/paging_prev.gif' /></a>");
			}
			sbfr.append("<span>");
			for (int i = startPage; i <= endPage; i++) {
				if (currentPage == i) {
					sbfr.append("<font size=3 color=red>[" + i + "]</font>");
				} else {
					sbfr.append("<a href='lostListAction.action?currentPage=" + i
							+ "'>[" + i + "]</a>");
				}
			}
			sbfr.append("</span>");
			if (endPage < totalPage) {
				sbfr.append("<a href='lostListAction.action?currentPage="
						+ (endPage + 1)
						+ "'><img src='/images/common/paging_next.gif' /></a>");
			} else {
				sbfr.append("<a href='#'><img src='/images/common/paging_next.gif' /></a>");
			}
			sbfr.append("<a href='lostListAction.action?currentPage=" + totalPage
					+ "'><img src='/images/common/paging_last.gif' /></a>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		pagiing();
		return SUCCESS;
	}
}
