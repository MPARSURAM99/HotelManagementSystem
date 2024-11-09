package in.cutm.model;
import java.sql.Date;

public class SearchRoom {
	private java.sql.Date fromDate;
	private java.sql.Date toDate;
	
	public SearchRoom() {
		super();
	}

	public SearchRoom(Date fromDate, Date toDate) {
		super();
		this.fromDate = fromDate;
		this.toDate = toDate;
	}

	public java.sql.Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(java.sql.Date fromDate) {
		this.fromDate = fromDate;
	}

	public java.sql.Date getToDate() {
		return toDate;
	}

	public void setToDate(java.sql.Date toDate) {
		this.toDate = toDate;
	}

	
}
