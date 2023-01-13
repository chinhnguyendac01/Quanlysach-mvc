package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


import bean.khachhangbean;
import bean.md5;

public class dangkydao {
	
	public String dangkykhachhang(khachhangbean Khachhangbean) {
	
		
		String hoten = Khachhangbean.getHoten();
		String diachi = Khachhangbean.getDiachi();
		String  sodt = Khachhangbean.getSodt();
		String email = Khachhangbean.getEmail();
		String tendn = Khachhangbean.getTendn();
		if(tendn != null)
		{
			tendn.replaceAll("\\s+","");
		}
		String pass = Khachhangbean.getPass();
		KetNoi kn = null;
		PreparedStatement statement = null;
		try {
		kn = new KetNoi();
		kn.KetNoi();
		String query = "insert into KhachHang(hoten,diachi,sodt,email,tendn,pass) values (?,?,?,?,?,?)";
		 statement = kn.cn.prepareStatement(query);
		
		statement.setString(1, hoten);
		statement.setString(2,diachi);
		statement.setString(3, sodt);
		statement.setString(4, email);
		statement.setString(5, tendn.replaceAll("\\s+",""));
		statement.setString(6, md5.md5(pass));
		int i = statement.executeUpdate();
		kn.cn.close();
		if(i != 0)
		{
			
			return "SUCCESS";
		}
		}catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
			
		}
		
		return "Đăng ký không thành công";
	}
}
