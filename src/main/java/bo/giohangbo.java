package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();

	public void Them(String masach, String tensach, long gia, long soluong) {
		for (giohangbean h : ds)
			if (h.getMasach().equals(masach)) {
				h.setSoluong( soluong);
				return;
			}
		ds.add(new giohangbean(masach, tensach, gia, soluong));
	}

	public long Tongtien() {
		long s = 0;
		for (giohangbean h : ds)
			s = s + h.getThanhtien();
		return s;
	}

	public void sua(String ms, long soluong) {
		for (giohangbean g : ds) {
			if (g.getMasach().equals(ms)) {
				g.setSoluong(soluong);
				return;
			}
		}
	}

	 public void Xoa(String masach) {
		 
		   for(giohangbean h: ds)
			   if(h.getMasach().equals(masach)) {
				   ds.remove(h);
				   return;
			   }
	   }


	public void xoaAll() {
		ds.removeAll(ds);
		
	}
	 public int countBook() {
			int count = 0;
			for (giohangbean g: ds) {
				count++;
			}
			
			return count;
		}

}
