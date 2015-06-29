package bustago.dao;

import java.util.HashMap;
import java.util.List;

import bustago.bean.MemberBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class MemberDao {
	private static SqlMapClient client;
	static {
		client = util.service.ServiceUtil.getSqlMapClient();
	}

	public static boolean loginCheck(HashMap<String, String> map) throws Exception {
		String pass = (String) client.queryForObject("member.loginCheck", map);
		if (pass != null && pass.length() > 0) {
			if (pass.equals(map.get("M_PW"))) {
				return true;
			}
		}
		return false;
	}

	public static boolean idCheck(HashMap<String, String> idmap) throws Exception {
		String email = (String) client.queryForObject("member.idCheck", idmap);
		if (email != null && email.length() > 0) {
			if (email.equals(idmap.get("M_EMAIL"))) {
				return true;
			}
		}
		return false;
	}

	public static boolean passCheck(HashMap<String, String> passmap)
			throws Exception {
		String id = (String) client.queryForObject("member.passCheck", passmap);
		String name = (String) client.queryForObject("member.passCheck", passmap);
		String email = (String) client.queryForObject("member.passCheck", passmap);
		if (id != null && id.length() > 0 && email != null && email.length() > 0 && name != null && name.length() > 0) {
			if (email.equals(passmap.get("M_EMAIL"))) {
				if (name.equals(passmap.get("M_NAME"))) {
					return true;
				}
			}
		}
		return false;
	}

	public static MemberBean selectCheck(String name) throws Exception {
		return (MemberBean) client.queryForObject("member.selectCheck", name);
	}

	public static MemberBean selectCheck2(String id) throws Exception {
		return (MemberBean) client.queryForObject("member.selectCheck2", id);
	}

	public static boolean overlapCheck(String id) throws Exception {
		String overlap = (String) client.queryForObject("member.overlapCheck", id);
		if (overlap != null && overlap.length() > 0) {
			if (overlap.equals(id)) {
				return true;
			}
		}
		return false;
	}

	

	
	
	
	public static void insertMember(MemberBean bean) throws Exception {
		client.insert("member.insertMember", bean);
	}

	public static String displayName() throws Exception {
		return (String) client.queryForObject("member.displayName");
	}
}
