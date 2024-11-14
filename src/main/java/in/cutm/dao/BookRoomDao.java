package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import in.cutm.model.BookRoom;

public class BookRoomDao {
	private Connection con;

	public BookRoomDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean isBooked(BookRoom bookingDetails) {
		boolean bookingStatus = false;
		
		String bookingQuery = "INSERT INTO bookings (from_date, to_date, location, room_id, roomPrice, name, contact, checkin_status) VALUES (?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps = con.prepareStatement(bookingQuery);
			ps.setDate(1, bookingDetails.getFromDate());
			ps.setDate(2, bookingDetails.getToDate());
			ps.setString(3, bookingDetails.getLocation());
			ps.setInt(4, bookingDetails.getRoomId());
			ps.setDouble(5, bookingDetails.getRoomPrice());
			ps.setString(6, bookingDetails.getName());
			ps.setString(7, bookingDetails.getContact());
			ps.setString(8, bookingDetails.getCheckinStatus());
			
			int i = ps.executeUpdate();
			
			if (i > 0) {
				bookingStatus = true;
			} else {
				bookingStatus = false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bookingStatus;
	}
}
