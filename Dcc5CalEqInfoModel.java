package dccweb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dccweb.bean.Dcc5CalEqInfo;
import dccweb.utility.JDBCDataSource;

public class Dcc5CalEqInfoModel {

	public static long nextPk() {
		long pk = 0;
		Connection conn;
		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement("Select Max(RegNumber) from callabequipmentinfo");
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

	public static long addUser(Dcc5CalEqInfo user) {
		int i = 0;
		try {
			Connection conn = JDBCDataSource.getConnection();

			PreparedStatement stmt = conn.prepareStatement("insert into callabequipmentinfo values(?,?,?)");
			stmt.setLong(1, nextPk()); 
			stmt.setString(2, user.getEquipmentName());
			stmt.setString(3, user.getEquipmentNumber());
			
			
			
			
			i = stmt.executeUpdate();
		
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}

}
