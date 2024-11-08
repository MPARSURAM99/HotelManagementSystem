package in.cutm.model;

public class Location {
	String branchName;
	String branchPassword;

	public Location() {
		super();
	}

	public Location(String branchName, String branchPassword) {
		super();
		this.branchName = branchName;
		this.branchPassword = branchPassword;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchPassword() {
		return branchPassword;
	}

	public void setBranchPassword(String branchPassword) {
		this.branchPassword = branchPassword;
	}
	
}