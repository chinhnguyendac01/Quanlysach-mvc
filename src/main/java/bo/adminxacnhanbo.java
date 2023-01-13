    package bo;

import java.util.ArrayList;

import bean.adminxacnhanbean;

import dao.xacnhandao;

public class adminxacnhanbo {
	xacnhandao xndao= new xacnhandao();
	  public ArrayList<adminxacnhanbean> getdanhsach(){
		  return xndao.getdanhsach();
	  }
     public void UpdateDaMua(long mct) {
    	for(adminxacnhanbean ad : xndao.getdanhsach()) {
    		if(ad.getMaChiTietHD() ==(mct)) {
    			xndao.UpdateDamua(mct);
    		}
    	}
     }

}

    
