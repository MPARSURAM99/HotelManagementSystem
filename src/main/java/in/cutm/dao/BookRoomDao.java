package in.cutm.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

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
	
	public List<BookRoom> displayTodayBooking(String resLoc){
		List<BookRoom> bookings = new ArrayList<BookRoom>(); 
        // Set the desired time zone explicitly
        TimeZone.setDefault(TimeZone.getTimeZone("Asia/Kolkata"));
        Calendar calendar = Calendar.getInstance();

        // Get today's date
        Date today = new Date(calendar.getTimeInMillis());
		
		try {
			String showBookingQuery = "SELECT * FROM bookings WHERE location = ? AND from_date = ? AND checkin_status = ?";
			PreparedStatement ps = con.prepareStatement(showBookingQuery);
			ps.setString(1, resLoc);
			ps.setDate(2, today);
			ps.setString(3, "Bookde");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				BookRoom bookDetails = new BookRoom();
				bookDetails.setRoomId(rs.getInt(5));
				bookDetails.setName(rs.getString(7));
				bookDetails.setCheckinStatus(rs.getString(8));
				bookDetails.setLocation(rs.getString(4));
				bookDetails.setFromDate(rs.getDate(2));
				bookDetails.setToDate(rs.getDate(3));
				bookDetails.setRoomPrice(rs.getDouble(6));
				bookings.add(bookDetails);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bookings;
	}
}
