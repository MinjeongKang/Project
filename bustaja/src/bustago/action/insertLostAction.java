package bustago.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

import bustago.bean.LostBean;
import bustago.dao.BoardDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class insertLostAction implements Preparable,ModelDriven<LostBean>{
	
	private LostBean lostbean;

	public LostBean getLostbean() {
		return lostbean;
	}
	
	public void setLostbean(LostBean lostbean) {
		this.lostbean = lostbean;
	}
	
	@Override
	public LostBean getModel() {
		// TODO Auto-generated method stub
		return lostbean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.lostbean=new LostBean();
	}
	
	public void fileWrite(){
		String path="C:\\bustaja1\\bustaja\\WebContent\\upload\\";
		try {
			FileInputStream fis=new FileInputStream(lostbean.getL_file());
			FileOutputStream fos=new FileOutputStream(path+lostbean.getL_fileFileName());
			int length=0;
			byte []b=new byte[1024*8];
			while((length=fis.read(b))!=-1){
				fos.write(b,0,length);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	@Override
	public String toString() {
		return "insertLostAction [lostbean=" + lostbean + "]";
	}

	public String execute(){
		
		fileWrite();
		BoardDao.insertLostData(lostbean);
		
		return "success";	
	}


	


}
