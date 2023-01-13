    package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.DateTimeException;
import java.util.ArrayList;
import java.util.Date;

import bean.lichsumuahangbean;
import bean.sachbean;

public class lichsumuahangdao {
	public ArrayList<lichsumuahangbean> getlichsu(long makh){
		 try {
			   ArrayList<lichsumuahangbean> ds= new ArrayList<lichsumuahangbean>();
			   //b1: Ket noi vao csdl
			   KetNoi kn = new KetNoi();
			   kn.KetNoi();
			   //b2: Lay du lieu ve
			   String sql = "select * from ViewLichSuMuaHang where makh =?";
			   PreparedStatement cmd = kn.cn.prepareStatement(sql);
			   cmd.setLong(1, makh);
			   ResultSet rs = cmd.executeQuery();
			   //b3: Duyet qua tap du lieu lay ve
			   while(rs.next()) {
				   String tensach = rs.getString("tensach");
				   Date NgayMua = rs.getDate("NgayMua");
				   int SoLuongMua = rs.getInt("SoLuongMua");
				   Long gia = rs.getLong("gia");
				   Long ThanhTien = rs.getLong("ThanhTien");
				   boolean damua = rs.getBoolean("damua");
				   ds.add(new lichsumuahangbean(tensach, NgayMua, SoLuongMua, gia, ThanhTien, damua));
			   }
			   //b4: Dong rs va cn
			   rs.close();
			   kn.cn.close();
			   return ds;
		   }catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public static void main(String[] args) {
		long b = 10177;
		lichsumuahangdao a = new lichsumuahangdao();
		System.out.print(a.getlichsu(b)); 
	}
}

    
