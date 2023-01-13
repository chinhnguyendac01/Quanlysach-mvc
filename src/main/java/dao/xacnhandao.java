package dao;

import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import org.apache.jasper.tagplugins.jstl.core.Out;

import bean.adminxacnhanbean;
import bean.sachbean;


public class xacnhandao {
	public ArrayList<adminxacnhanbean> getdanhsach(){
    	try {
    		ArrayList<adminxacnhanbean> ds= new ArrayList<adminxacnhanbean>();
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="select * from ViewXacNhan where damua = 0";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				  long MaChiTietHD=rs.getLong("MaChiTietHD");
				  long MaHoaDon=rs.getLong("MaHoaDon");;
				  String hoten=rs.getString("hoten");
				  String tensach=rs.getString("tensach");;
				  long SoLuongMua=rs.getLong("SoLuongMua");;
				  long gia=rs.getLong("gia");;
				  long thanhtien=rs.getLong("ThanhTien");;
				  boolean damua=rs.getBoolean("damua");
				 ds.add(new adminxacnhanbean(MaChiTietHD, MaHoaDon, hoten, tensach, SoLuongMua, gia, thanhtien, damua));
			}
			rs.close();kn.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
    }


	 public void UpdateDamua(long ChiTietHoaDon) {
	      try {
	    	  KetNoi kn= new KetNoi();
	  		kn.KetNoi();
	  		String sql="update ViewXacNhan set damua = 1 where MaChiTietHD = ?";
	  		PreparedStatement cmd= kn.cn.prepareStatement(sql);
	  		cmd.setLong(1, ChiTietHoaDon);
	  		cmd.executeUpdate();
	  		kn.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	    }

}


