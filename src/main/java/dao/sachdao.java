package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.loaibean;
import bean.sachbean;

public class sachdao {
    public ArrayList<sachbean> getsach(){
    	ArrayList<sachbean> ds= new ArrayList<sachbean>();
    	try {
    		KetNoi kn = new KetNoi();
    		kn.KetNoi();
    		String sql = "select * from sach";
    		PreparedStatement cmd = kn.cn.prepareStatement(sql);
    		ResultSet rs = cmd.executeQuery();
    		while(rs.next()) {
    			String masach = rs.getString("masach");
    			String tensach = rs.getString("tensach");
    			String tacgia = rs.getString("tacgia");
    			int soluong = rs.getInt("soluong");
    			int gia = rs.getInt("gia");
    			String anh = rs.getString("anh");
    			String maloai = rs.getString("maloai");
    			ds.add(new sachbean(masach,tensach,tacgia,soluong,gia,anh,maloai));
    		}
    		rs.close();
    		kn.cn.close();
    		return ds;
    	} catch(Exception e) {
    		e.printStackTrace();
    		return null;
    	}
    	   	
    }
    /*public int add(sachbean sach) throws Exception{
    	KetNoi kn = new KetNoi();
    	kn.KetNoi();
		String sql = "insert into sach(maSach,tenSach,tacGia,soLuong,gia,anh,ngayNhap,maLoai) values(?,?,?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, sach.getMasach());
		cmd.setString(2, sach.getTensach());
		cmd.setString(3, sach.getTacgia());
		cmd.setInt(4, sach.getSoluong());
		cmd.setLong(5, sach.getGia());
		cmd.setString(6, sach.getAnh());
		cmd.setDate(7, new Date(sach.getNgaynhap().getTime()));
		cmd.setString(8,sach.getMaloai());
		int rs = cmd.executeUpdate();
		kn.cn.close();
		return rs;
	}*/
    
}


