package bustago.bean;

import java.io.File;

public class LostBean {

	private int l_no;
	private String l_name;
	private String l_title;
	private String l_pw;
	private String l_email;	
	private String l_contents;
	private int l_hit;
	private String l_regdate;
	private File   l_file;
	private String l_fileFileName;
	public int getL_no() {
		return l_no;
	}
	public void setL_no(int l_no) {
		this.l_no = l_no;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getL_title() {
		return l_title;
	}
	public void setL_title(String l_title) {
		this.l_title = l_title;
	}
	public String getL_pw() {
		return l_pw;
	}
	public void setL_pw(String l_pw) {
		this.l_pw = l_pw;
	}
	public String getL_email() {
		return l_email;
	}
	public void setL_email(String l_email) {
		this.l_email = l_email;
	}
	public String getL_contents() {
		return l_contents;
	}
	public void setL_contents(String l_contents) {
		this.l_contents = l_contents;
	}
	public int getL_hit() {
		return l_hit;
	}
	public void setL_hit(int l_hit) {
		this.l_hit = l_hit;
	}
	public String getL_regdate() {
		return l_regdate;
	}
	public void setL_regdate(String l_regdate) {
		this.l_regdate = l_regdate;
	}
	public File getL_file() {
		return l_file;
	}
	public void setL_file(File l_file) {
		this.l_file = l_file;
	}
	public String getL_fileFileName() {
		return l_fileFileName;
	}
	public void setL_fileFileName(String l_fileFileName) {
		this.l_fileFileName = l_fileFileName;
	}
	@Override
	public String toString() {
		return "LostBean [l_no=" + l_no + ", l_name=" + l_name + ", l_title="
				+ l_title + ", l_pw=" + l_pw + ", l_email=" + l_email
				+ ", l_contents=" + l_contents + ", l_hit=" + l_hit
				+ ", l_regdate=" + l_regdate + ", l_file=" + l_file
				+ ", l_fileFileName=" + l_fileFileName + "]";
	}
	
	
	

	
	
	
}

