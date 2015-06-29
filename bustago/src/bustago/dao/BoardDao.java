package bustago.dao;

import java.util.HashMap;
import java.util.List;

import bustago.action.AdminCKList;
import bustago.action.AdminMemberAction;
import bustago.bean.AdminCkBean;
import bustago.bean.AdminMemberBean;
import bustago.bean.BoardBean;
import bustago.bean.BusComBean;
import bustago.bean.BusSearchBean;
import bustago.bean.LostBean;
import bustago.bean.MemberBean;
import bustago.bean.cardBean;
import bustago.bean.questionBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class BoardDao{
	private static SqlMapClient client;
	static{
		client=util.service.ServiceUtil.getSqlMapClient();
	}

	public static Integer getTotalrow() throws Exception{
		return (Integer)client.queryForObject("bustago.getTotalrow");
	}
	public static List<BoardBean>selectNoticeBoard(HashMap<Object,Object>map)throws Exception{
		return client.queryForList("bustago.selectNoticeBoard",map);
	}

	public static List<BusSearchBean>yeBusSearch(HashMap<Object,Object>map)throws Exception{
		return client.queryForList("bustago.yeBusSearch",map);
	}
	public static List<AdminCkBean>yedataSerch(HashMap<Object,Object>map)throws Exception{
		return client.queryForList("bustago.yedataSerch",map);
	}
	public static String selectSeatNo(HashMap<Object,Object>map)throws Exception{
		return (String) client.queryForObject("bustago.selectSeatNo",map);
	}
	
	
	public static List<AdminCkBean>adminckList()throws Exception{
		return client.queryForList("bustago.adminckList");
	}
	
	public static List<BusSearchBean>searchBus(HashMap<Object, Object>map)throws Exception{
		return client.queryForList("bustago.searchBus", map);
		
	}
	

	public static void seatCK(HashMap<Object, Object>map)throws Exception{
		client.update("bustago.seatCK", map);
	}
	
	public static void seatUNCK(HashMap<Object, Object>map)throws Exception{
		client.update("bustago.seatUNCK", map);
	}
	


	public static List<BoardBean>selectNotice(HashMap<Object,Object>map)throws Exception{
		return client.queryForList("bustago.selectNotice",map);
	}
	
	public static List<BoardBean>adminNoticeList()throws Exception{
		return client.queryForList("bustago.adminNoticeList");
	}
	
	public static List<questionBean>adminQuestionList()throws Exception{
		return client.queryForList("bustago.adminQuestionList");
	}
	
	public static List<AdminMemberBean>adminMemberList()throws Exception{
		return client.queryForList("bustago.adminMemberList");
	}

	public static List<BusComBean>searchBusCom(HashMap<Object, Object>map)throws Exception{
		System.out.println("maptest="+map);
		return client.queryForList("bustago.searchBusCom", map);
	}
	
	public static void updateHit(int l_no)throws Exception{
		client.update("bustago.updateHit", l_no);
	}
	

	
	public static void updateCNT(HashMap<Object, Object>map)throws Exception{
		client.update("bustago.updateCNT", map);
	}
	public static void deleteYedataPay(HashMap<Object, Object>map)throws Exception{
		client.update("bustago.deleteYedataPay", map);
	}
	public static void deleteYedata(HashMap<Object, Object>map)throws Exception{
		client.update("bustago.deleteYedata", map);
	}
	
	
	
	
	public static void ckFlag(HashMap<Object, Object>map)throws Exception{
		client.update("bustago.ckFlag", map);
	}
	
	
	public static void yeData(HashMap<Object, Object>map)throws Exception{
		
		try {
			client.startTransaction();
			client.insert("bustago.yeData", map);
			client.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}
	
	
public static void insertCard(cardBean bean) {
		
		try {
			client.startTransaction();
			client.insert("bustago.insertCard", bean);
			client.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	
	
	public static Integer getTotalRow() throws Exception{
		return (Integer)client.queryForObject("bustago.getTotalRow");
	}
	public static Integer gettotalRow() throws Exception{
		return (Integer)client.queryForObject("bustago.gettotalRow");
	}
	public static Integer getlostTotalRow() throws Exception{
		return (Integer)client.queryForObject("bustago.getlostTotalRow");
	}
	public static List<BusComBean>selectBusComList(HashMap<Object,Object>map)throws Exception{
		return client.queryForList("bustago.selectBusComList",map);
	}
	public static List<LostBean>selectLostList(HashMap<Object,Object>map)throws Exception{
		return client.queryForList("bustago.selectLostList",map);
	}	
	
	public static List<LostBean>selectLostInfoView(HashMap<Object, Object>map)throws Exception{
		return client.queryForList("bustago.selectLostInfoView",map);
	}

	public static boolean lostLoginCheck(HashMap<Object, Object>map)throws Exception{
		String l_pw=(String)client.queryForObject("bustago.lostLoginCheck", map);
		System.out.println(l_pw);
		if(l_pw!=null&& l_pw.length()>0){
			
			if(l_pw.equals(map.get("l_pw"))){

				return true;
			}
		}
		System.out.println("false");
		return false;
	}

	public static void insertData(questionBean quesList) {
		try {
			
			
			client.startTransaction();
			
			
			
			client.insert("bustago.insertData", quesList);
			
			
			
			
			
			client.commitTransaction();
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
			
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	
	public static void lostDelete(int l_no)throws Exception{ 
	System.out.println("BoardDao의 삭제시 글번호"+l_no);
	try {
		client.startTransaction();
		client.delete("bustago.lostDelete", l_no);
		client.commitTransaction();			
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}finally{
		
		try {
			client.endTransaction();				
		} catch (Exception e2) {
			// TODO: handle exception
		}
	}
}
	public static void lostSaveModifyUpdate(LostBean lostbean){
		try {
			client.startTransaction();
			client.insert("bustago.lostSaveModifyUpdate", lostbean);
			client.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}

		
	}
	
	
	
	
	public static List<BoardBean>searchNotice(HashMap<Object, Object>map)throws Exception{
		return client.queryForList("bustago.searchNotice", map);
	}
	
	public static void insertLostData(LostBean lostbean) {
		try {
			client.startTransaction();
			client.insert("bustago.insertLostData", lostbean);
			client.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
}