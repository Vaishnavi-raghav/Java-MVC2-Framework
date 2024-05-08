package dccweb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import dccweb.bean.adminreg;
import dccweb.utility.JDBCDataSource;

public class adminregModel {

	public static long nextPk() {
		long pk = 0;
		Connection conn;
		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement("Select Max(RegNumber) from adminreg");
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

	public static long addUser(adminreg user) {
		int i = 0;
		try {
			Connection conn = JDBCDataSource.getConnection();

			PreparedStatement stmt = conn.prepareStatement("insert into adminreg values(?,?,?,?,?,?,?,?,?,?)");
			stmt.setLong(1, nextPk()); 
			stmt.setString(2, user.getEmployeeId());
			stmt.setString(3, user.getTitle());
			stmt.setString(4, user.getFirstname());
			stmt.setString(5, user.getLastname());
			stmt.setString(6, user.getDeparment());
			stmt.setString(7, user.getContactNumber());
			stmt.setString(8, user.getAlternateContactNumber());
			stmt.setString(9, user.getEmail());
			stmt.setString(10, user.getPassword());
			i = stmt.executeUpdate();
		
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}
	 public static adminreg UserLogin(String LoginEmail ,String password) {
		    Connection conn;
		    adminreg user = null;
		   // String name = null;
		    try {
		      conn = JDBCDataSource.getConnection();
		      PreparedStatement stmt = conn.prepareStatement("Select * from adminreg where EmployeeId=? and Password = ?");
		      stmt.setString(1, LoginEmail);
		      stmt.setString(2,password);
		      ResultSet rs = stmt.executeQuery();
		      if(rs.next()) {
		        user = new adminreg();
		  
		        user.setEmployeeId(rs.getString("EmployeeId"));
				user.setTitle(rs.getString("Title"));
				user.setFirstname(rs.getString("Firstname"));
			    user.setLastname(rs.getString("Lastname"));
			    user.setDeparment(rs.getString("Department"));
			    user.setContactNumber(rs.getString("ContactNumber"));
			    user.setAlternateContactNumber(rs.getString("AlternateContactNumber"));    
			    user.setEmail(rs.getString("Email"));
			    user.setPassword(rs.getString("Password"));  
			    
			    
		      }
		      
		    } catch (Exception e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		    }
		    
		    return user;

}
}