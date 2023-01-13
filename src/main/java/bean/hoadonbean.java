    package bean;

import java.util.Date;

public class hoadonbean {
  private long makh;
  private Date NgayMua;
  private Boolean damua;
public hoadonbean() {
	super();
	// TODO Auto-generated constructor stub
}
public hoadonbean(long makh, Date ngayMua, Boolean damua) {
	super();
	this.makh = makh;
	NgayMua = ngayMua;
	this.damua = damua;
}
public long getMakh() {
	return makh;
}
public void setMakh(long makh) {
	this.makh = makh;
}
public Date getNgayMua() {
	return NgayMua;
}
public void setNgayMua(Date ngayMua) {
	NgayMua = ngayMua;
}
public Boolean getDamua() {
	return damua;
}
public void setDamua(Boolean damua) {
	this.damua = damua;
}
 
}

    
