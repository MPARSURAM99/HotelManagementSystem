package in.cutm.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.cutm.dao.BookRoomDao;
import in.cutm.dbConnection.ConnectDB;
import in.cutm.model.BookRoom;

@WebServlet("/bookRoom")
public class BookRoomServlet extends HttpServlet{
	
	public Date convertToSqlDate(String dateStr) throws ParseException {
        SimpleDateFormat inputFormat = new SimpleDateFormat("dd-MM-yyyy");
        java.util.Date utilDate = inputFormat.parse(dateStr);
        return new java.sql.Date(utilDate.getTime());
    }

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		 javax.servlet.http.HttpSession session = req.getSession();
	        
	        // Fetching parameters
	        String fromDateStr = req.getParameter("fromDate");
	        String toDateStr = req.getParameter("toDate");
	        String location = req.getParameter("location");
	        String roomIdStr = req.getParameter("roomid");
	        String roomPriceStr = req.getParameter("roomPrice");
	        String userName = req.getParameter("userName");
	        String userContact = req.getParameter("userContact");
	        String checkinStatus = req.getParameter("checkinStatus");

	        int roomId = Integer.parseInt(roomIdStr);
	        double roomPrice = Double.parseDouble(roomPriceStr);

	        
	        try {
	            // Converting dates
	            Date fromDate = convertToSqlDate(fromDateStr);
	            Date toDate = convertToSqlDate(toDateStr);
	            
	            // Creating booking object
	            BookRoom rmBook = new BookRoom(fromDate, toDate, location, roomId, roomPrice, userName, userContact, checkinStatus);
	            
	            // Booking DAO
	            BookRoomDao brDao = new BookRoomDao(ConnectDB.dbconnect());
	            
	            // Check if room is booked
	            if (brDao.isBooked(rmBook)) {
	                session.setAttribute("bookingNames", userName);
	                session.setAttribute("bookingSuccessMsg", "Room No. " + roomId + " is booked successfully at " + location);
	                resp.sendRedirect("bookingDetails.jsp");
	            } else {
	                session.setAttribute("bookingFailMsg", "Booking failed, please try again.");
	                resp.sendRedirect("bookingForm.jsp");
	            }
	            
	        } catch (ParseException e) {
	            e.printStackTrace();
	            session.setAttribute("dateParseErrorMsg", "Invalid date format. Please use dd-MM-yyyy.");
	            resp.sendRedirect("bookingForm.jsp");
	        } catch (Exception e) {
	            e.printStackTrace();
	            session.setAttribute("bookingErrorMsg", "An unexpected error occurred. Please try again.");
	            resp.sendRedirect("bookingForm.jsp");
	        }

	}
}
