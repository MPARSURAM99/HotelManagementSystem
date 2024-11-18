package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import in.cutm.model.Room;

public class RoomDao {
	private Connection con;

	public RoomDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean isAddedNewRoom(Room roomDetails) {
		boolean isAdded = false;
		
		try {
			String addRoomQuery = "INSERT INTO hotel_rooms (location, room_id, category, capacity, price, ac, meal, wifi, couple, parking, photo, status) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(addRoomQuery);
			ps.setString(1, roomDetails.getLocation());
			ps.setInt(2, roomDetails.getRoomId());
			ps.setString(3, roomDetails.getCategory());
			ps.setInt(4, roomDetails.getCapacity());
			ps.setDouble(5, roomDetails.getPrice());
			ps.setString(6, roomDetails.getAc());
			ps.setString(7, roomDetails.getMeal());
			ps.setString(8, roomDetails.getWifi());
			ps.setString(9, roomDetails.getCouple());
			ps.setString(10, roomDetails.getParking());
			ps.setBytes(11, roomDetails.getPhoto());
			ps.setString(12, roomDetails.getStatus());
			
			int row = ps.executeUpdate();
			
			if (row > 0) {
				isAdded = true;
			} else {
				isAdded = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isAdded;
	}
	

}
