package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminCredentialDao {
	private Connection con;

	public AdminCredentialDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean isLoginSuccessful(String adminEmail, String adminPassword) {
		boolean isCredentialMatch = false;
		
		try {
			String credentialMatchingQuery = "SELECT * FROM admin_credential WHERE email=? AND password=?";
			PreparedStatement ps = con.prepareStatement(credentialMatchingQuery);
			ps.setString(1, adminEmail);
			ps.setString(2, adminPassword);
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				isCredentialMatch = true;
			} else {
				isCredentialMatch = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isCredentialMatch;
	}
}
