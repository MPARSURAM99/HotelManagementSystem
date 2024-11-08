package in.cutm.model;

public class ReceptionCredential {
	String receptionUserName;
	String receptionLocation;
	String receptionPassword;
	

	public ReceptionCredential() {
		super();
		
	}

	
	public ReceptionCredential(String receptionLocation, String receptionPassword) {
		super();
		this.receptionLocation = receptionLocation;
		this.receptionPassword = receptionPassword;
	}


	public ReceptionCredential(String receptionUserName, String receptionLocation, String receptionPassword) {
		super();
		this.receptionUserName = receptionUserName;
		this.receptionLocation = receptionLocation;
		this.receptionPassword = receptionPassword;
	}


	public String getReceptionUserName() {
		return receptionUserName;
	}

	public void setReceptionUserName(String receptionUserName) {
		this.receptionUserName = receptionUserName;
	}

	public String getReceptionLocation() {
		return receptionLocation;
	}

	public void setReceptionEmail(String receptionLocation) {
		this.receptionLocation = receptionLocation;
	}

	public String getReceptionPassword() {
		return receptionPassword;
	}

	public void setReceptionPassword(String receptionPassword) {
		this.receptionPassword = receptionPassword;
	}
	

}
