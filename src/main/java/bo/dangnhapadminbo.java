package bo;

import bean.dangnhapadminbean;
import dao.dangnhapadmindao;

public class dangnhapadminbo {
   dangnhapadmindao dndao=new dangnhapadmindao();
   public dangnhapadminbean ktdn(String tendn, String pass) {
	   return dndao.ktdn(tendn, pass);
   }
}
