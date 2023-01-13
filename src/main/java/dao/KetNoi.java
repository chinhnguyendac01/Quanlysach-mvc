package dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class KetNoi {
	public Connection cn;
	public void KetNoi() {
		try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("ok b1");
				cn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QLSach;user=sa; password=123456");
				System.out.println("ok b2");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	public static void main(String[] args) {
		KetNoi kn = new KetNoi();
		kn.KetNoi();

	}

}
