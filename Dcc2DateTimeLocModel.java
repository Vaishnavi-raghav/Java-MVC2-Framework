package dccweb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dccweb.bean.DCC2dateTimeLoc;
import dccweb.bean.Dcc1AdministrativeData;
import dccweb.utility.JDBCDataSource;

public class Dcc2DateTimeLocModel {
	public static long nextPk() {
	long pk = 0;
	Connection conn;
	try {
		conn = JDBCDataSource.getConnection();
		PreparedStatement stmt = conn.prepareStatement("Select Max(RegNumber) from datetimelocation");
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


	public static long addUser(DCC2dateTimeLoc user) {
		int i = 0;
		try {
			Connection conn = JDBCDataSource.getConnection();

			PreparedStatement stmt = conn.prepareStatement("insert into datetimelocation values(?,?,?,?)");
			stmt.setLong(1, nextPk()); 
			stmt.setString(2, user.getBeginDate());
			stmt.setString(3, user.getEndDate());
			stmt.setString(4, user.getLocation());
			
			
			i = stmt.executeUpdate();
		
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}



}
