package bustago.dao;

import java.util.HashMap;
import java.util.List;

import bustago.bean.SeatBean;
import bustago.bean.cardBean;
import bustago.bean.questionBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class SeatDao {
	private static SqlMapClient client;
	static {
		client = util.service.ServiceUtil.getSqlMapClient();
	}

	public static List<SeatBean> BusSeat(HashMap<Object, Object> map)throws Exception {
		return client.queryForList("bustago.SelectseatBus", map);

	}

	public void updateSeat(SeatBean bean) throws Exception {
		try {
			client.startTransaction();
			client.update("", bean);
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
