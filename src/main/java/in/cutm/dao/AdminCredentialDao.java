package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import in.cutm.model.AdminCredential;

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
	
	public boolean isPasswordUpdated(AdminCredential credentialDetails) {
		boolean isUpdate = false;
		
		try {
			String pswdUpdateQuery = "UPDATE admin_credential SET email=?, password=? WHERE user_name=?";
			PreparedStatement ps = con.prepareStatement(pswdUpdateQuery);
			ps.setString(1, credentialDetails.getAdminEmail());
			ps.setString(2, credentialDetails.getAdminPassword());
			ps.setString(3, credentialDetails.getAdminUserName());
			
			int i = ps.executeUpdate();
			
			if (i == 1) {
				isUpdate = true;
			} else {
				isUpdate = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isUpdate;
	}
}
