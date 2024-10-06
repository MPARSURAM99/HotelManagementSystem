package in.cutm.model;

public class AdminCredential {
	String adminUserName;
	String adminEmail;
	String adminPassword;

	public AdminCredential() {
		super();
	}

	public AdminCredential(String adminEmail, String adminPassword) {
		super();
		this.adminEmail = adminEmail;
		this.adminPassword = adminPassword;
	}

	public AdminCredential(String adminUserName, String adminEmail, String adminPassword) {
		super();
		this.adminUserName = adminUserName;
		this.adminEmail = adminEmail;
		this.adminPassword = adminPassword;
	}

	public String getAdminUserName() {
		return adminUserName;
	}

	public void setAdminUserName(String adminUserName) {
		this.adminUserName = adminUserName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
}
