package dccweb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dccweb.bean.Dcc3Manufacturer;
import dccweb.utility.JDBCDataSource;

public class Dcc3manufacturermodel {
	
	
	public static long nextPk() {
		long pk = 0;
		Connection conn;
		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement("Select Max(RegNumber) from manufactureriteminfo");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				pk = rs.getLong(1);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pk + 1;

	}

	public static long addUser(Dcc3Manufacturer user) {
		int i = 0;
		try {
			Connection conn = JDBCDataSource.getConnection();

			PreparedStatement stmt = conn.prepareStatement("insert into manufactureriteminfo values(?,?,?,?,?)");
			stmt.setLong(1, nextPk()); 
			stmt.setString(2, user.getItem());
			stmt.setString(3, user.getManufacturer());
			stmt.setString(4, user.getModelNumber());
			stmt.setString(5, user.getSerialNumber());
			
			
			
			i = stmt.executeUpdate();
		
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}

}
