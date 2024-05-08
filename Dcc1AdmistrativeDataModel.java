package dccweb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dccweb.bean.Dcc1AdministrativeData;
import dccweb.utility.JDBCDataSource;

public class Dcc1AdmistrativeDataModel {
	public static long nextPk() {
	long pk = 0;
	Connection conn;
	try {
		conn = JDBCDataSource.getConnection();
		PreparedStatement stmt = conn.prepareStatement("Select Max(RegNumber) from administrativedata");
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

public static long addUser(Dcc1AdministrativeData user) {
	int i = 0;
	try {
		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement stmt = conn.prepareStatement("insert into administrativedata values(?,?,?,?,?,?,?,?)");
		stmt.setLong(1, nextPk()); 
		stmt.setString(2, user.getSoftwarename());
		stmt.setString(3, user.getSoftwareversion());
		stmt.setString(4, user.getCountrycode());
		stmt.setString(5, user.getUsedLanguageCode());
		stmt.setString(6, user.getMandatoryLanguageCode());
		stmt.setString(7, user.getUniqueIdentifier());
		stmt.setString(8, user.getOrderNo());
		
		i = stmt.executeUpdate();
	
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return i;
}

}

