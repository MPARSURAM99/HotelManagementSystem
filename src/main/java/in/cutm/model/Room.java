package in.cutm.model;

public class Room {
	private int id;
	private String location;
	private int roomId;
	private String category;
	private int capacity;
	private double price;
	private String ac;
	private String meal;
	private String wifi;
	private String couple;
	private String parking;
	private byte[] photo;
	private String status;

	public Room() {
		super();
	}

	public Room(int id, String location, int roomId, String category, int capacity, double price, String ac,
			String meal, String wifi, String couple, String parking, byte[] photo, String status) {
		super();
		this.id = id;
		this.location = location;
		this.roomId = roomId;
		this.category = category;
		this.capacity = capacity;
		this.price = price;
		this.ac = ac;
		this.meal = meal;
		this.wifi = wifi;
		this.couple = couple;
		this.parking = parking;
		this.photo = photo;
		this.status = status;
	}

	public Room(String location, int roomId, String category, int capacity, double price, String ac, String meal,
			String wifi, String couple, String parking, byte[] photo, String status) {
		super();
		this.location = location;
		this.roomId = roomId;
		this.category = category;
		this.capacity = capacity;
		this.price = price;
		this.ac = ac;
		this.meal = meal;
		this.wifi = wifi;
		this.couple = couple;
		this.parking = parking;
		this.photo = photo;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getAc() {
		return ac;
	}

	public void setAc(String ac) {
		this.ac = ac;
	}

	public String getMeal() {
		return meal;
	}

	public void setMeal(String meal) {
		this.meal = meal;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public String getCouple() {
		return couple;
	}

	public void setCouple(String couple) {
		this.couple = couple;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
