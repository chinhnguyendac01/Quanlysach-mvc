package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.khachhangbean;
import bean.md5;

public class khachhangdao {
	
	public khachhangbean ktdn(String tendn, String pass) {
		try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="select * from KhachHang where tendn=? and pass=?";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			cmd.setString(2, md5.md5(pass));
			ResultSet rs= cmd.executeQuery();
			khachhangbean kh= null;
			if(rs.next()) {//Dang nhap thanh cong
				long makh= rs.getLong("makh");
				String hoten=rs.getString("hoten");
				String diachi=rs.getString("diachi");
				String sodt=rs.getString("sodt");
				String email=rs.getString("email");
				kh= new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
			}
			return kh;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void main(String[] args) {
	khachhangdao kh= new khachhangdao();
	System.out.println(kh.ktdn("chinhnguyendac", "111111").getHoten());

	}

}
