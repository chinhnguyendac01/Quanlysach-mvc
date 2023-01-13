package bo;

import dao.hoadondao;

public class hoadonbo {
	hoadondao hd= new hoadondao();
	public int Them(long makh) {
		return hd.Them(makh);
	}
	 public long maxhd() {
		 return hd.maxhd();
	 }
}
