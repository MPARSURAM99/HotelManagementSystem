package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import in.cutm.model.Room;

public class SearchRoomDao {
	private Connection con;

	public SearchRoomDao(Connection con) {
		super();
		this.con = con;
	}
	
	public List<Room> displayAvailableRoom(){
		List<Room> roomList = new ArrayList<Room>();
		Room rm = null;
		
		try {
			String displayAvlRoomQuery = "SELECT * FROM hotel_rooms";
			PreparedStatement ps = con.prepareStatement(displayAvlRoomQuery);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				rm = new Room();
				
				rm.setId(rs.getInt(1));
				rm.setLocation(rs.getString(2));
				rm.setRoomId(rs.getInt(3));
				rm.setCategory(rs.getString(4));
				rm.setCapacity(rs.getInt(5));
				rm.setPrice(rs.getDouble(6));
				rm.setAc(rs.getString(7));
				rm.setMeal(rs.getString(8));
				rm.setWifi(rs.getString(9));
				rm.setCouple(rs.getString(10));
				rm.setParking(rs.getString(11));
				rm.setPhoto(rs.getBytes(12));
				rm.setStatus(rs.getString(13));
				roomList.add(rm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return roomList;
	}
	
	public Room getRoomById(int rmId) {
		Room rm = null;
		
		try {
			String getRmByIdQuery = "SELECT * FROM hotel_rooms WHERE room_id = ?";
			PreparedStatement ps = con.prepareStatement(getRmByIdQuery);
			ps.setInt(1, rmId);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				rm = new Room();
				
				rm.setLocation(rs.getString(2));
				rm.setRoomId(rs.getInt(3));
				rm.setCategory(rs.getString(4));
				rm.setCapacity(rs.getInt(5));
				rm.setPrice(rs.getDouble(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rm;
	}
}
