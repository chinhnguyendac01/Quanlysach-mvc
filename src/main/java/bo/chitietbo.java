package bo;

import dao.chitietdao;

public class chitietbo {
  chitietdao ct= new chitietdao();
  public int Them(String masach, long soluongmua, long mahd) {
	  return ct.Them(masach, soluongmua, mahd);
  }
}
