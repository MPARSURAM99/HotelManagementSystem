package in.cutm.model;

import java.sql.Date;

public class BookRoom {
	private int id;
	private java.sql.Date fromDate;
	private java.sql.Date toDate;
	private String location;
	private int roomId;
	private double roomPrice;
	private String name;
	private String contact;
	private String checkinStatus;
	
	public BookRoom() {
		super();

	}

	public BookRoom(Date fromDate, Date toDate, String location, int roomId, double roomPrice, String name,
			String contact, String checkinStatus) {
		super();
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.location = location;
		this.roomId = roomId;
		this.roomPrice = roomPrice;
		this.name = name;
		this.contact = contact;
		this.checkinStatus = checkinStatus;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public double getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(double roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getCheckinStatus() {
		return checkinStatus;
	}

	public void setCheckinStatus(String checkinStatus) {
		this.checkinStatus = checkinStatus;
	}

	
	
}
