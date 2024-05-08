package dccweb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import dccweb.bean.Dcc4CalLabInfo;
import dccweb.utility.JDBCDataSource;

public class Dcc4CalLabInfoModel {
	public static long nextPk() {
		long pk = 0;
		Connection conn;
		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement("Select Max(RegNumber) from callabcontactdetails");
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

	public static long addUser(Dcc4CalLabInfo user) {
		int i = 0;
		try {
			Connection conn = JDBCDataSource.getConnection();

			PreparedStatement stmt = conn.prepareStatement("insert into callabcontactdetails values(?,?,?,?,?,?,?,?,?)");
			stmt.setLong(1, nextPk()); 
			stmt.setString(2, user.getLabname());
			stmt.setString(3, user.getEmail());
			stmt.setString(4, user.getPhoneNumber());
			stmt.setString(5, user.getFax());
			stmt.setString(6, user.getCountry());
			stmt.setString(7, user.getState());
			stmt.setString(8, user.getPostCode());
			stmt.setString(9, user.getStreet());
			
			
			
			i = stmt.executeUpdate();
		
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}


}
