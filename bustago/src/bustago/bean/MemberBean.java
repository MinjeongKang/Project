package bustago.bean;

public class MemberBean {
	private String M_ID;
	private String M_PW;
	private String M_NAME;
	private String M_SEX;
	private String M_JUMIN;
	private String M_CP;
	private String M_ADDR;
	private String M_EMAIL;
	private String M_GRADE;
	private String M_DATE;

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

	public String getM_PW() {
		return M_PW;
	}

	public void setM_PW(String m_PW) {
		M_PW = m_PW;
	}

	public String getM_NAME() {
		return M_NAME;
	}

	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}

	public String getM_SEX() {
		return M_SEX;
	}

	public void setM_SEX(String m_SEX) {
		M_SEX = m_SEX;
	}

	public String getM_JUMIN() {
		return M_JUMIN;
	}

	public void setM_JUMIN(String m_JUMIN) {
		M_JUMIN = m_JUMIN;
	}

	public String getM_CP() {
		return M_CP;
	}

	public void setM_CP(String m_CP) {
		M_CP = m_CP;
	}

	public String getM_ADDR() {
		return M_ADDR;
	}

	public void setM_ADDR(String m_ADDR) {
		M_ADDR = m_ADDR;
	}

	public String getM_EMAIL() {
		return M_EMAIL;
	}

	public void setM_EMAIL(String m_EMAIL) {
		M_EMAIL = m_EMAIL;
	}

	public String getM_GRADE() {
		return M_GRADE;
	}

	public void setM_GRADE(String m_GRADE) {
		M_GRADE = m_GRADE;
	}

	public String getM_DATE() {
		return M_DATE;
	}

	public void setM_DATE(String m_DATE) {
		M_DATE = m_DATE;
	}

	@Override
	public String toString() {
		return "MemberBean [M_ID=" + M_ID + ", M_PW=" + M_PW + ", M_NAME="
				+ M_NAME + ", M_SEX=" + M_SEX + ", M_JUMIN=" + M_JUMIN
				+ ", M_CP=" + M_CP + ", M_ADDR=" + M_ADDR + ", M_EMAIL="
				+ M_EMAIL + ",M_DATE=" + M_DATE + "]";
	}

}
