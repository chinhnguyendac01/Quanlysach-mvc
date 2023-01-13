    package bean;

import java.util.Date;

public class lichsumuahangbean {
   private String tensach;
   private Date NgayMua;
   private int SoLuongMua;
   private Long gia;
   private Long ThanhTien;
   private boolean damua;
public lichsumuahangbean() {
	super();
	// TODO Auto-generated constructor stub
}
public lichsumuahangbean(String tensach, Date ngayMua, int soLuongMua, Long gia, Long thanhTien, boolean damua) {
	super();
	this.tensach = tensach;
	NgayMua = ngayMua;
	SoLuongMua = soLuongMua;
	this.gia = gia;
	ThanhTien = thanhTien;
	this.damua = damua;
}
public String getTensach() {
	return tensach;
}
public void setTensach(String tensach) {
	this.tensach = tensach;
}
public Date getNgayMua() {
	return NgayMua;
}
public void setNgayMua(Date ngayMua) {
	NgayMua = ngayMua;
}
public int getSoLuongMua() {
	return SoLuongMua;
}
public void setSoLuongMua(int soLuongMua) {
	SoLuongMua = soLuongMua;
}
public Long getGia() {
	return gia;
}
public void setGia(Long gia) {
	this.gia = gia;
}
public Long getThanhTien() {
	return ThanhTien;
}
public void setThanhTien(Long thanhTien) {
	ThanhTien = thanhTien;
}
public boolean isDamua() {
	return damua;
}
public void setDamua(boolean damua) {
	this.damua = damua;
}
   
}

    
