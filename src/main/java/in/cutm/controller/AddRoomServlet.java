package in.cutm.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import in.cutm.dao.RoomDao;
import in.cutm.dbConnection.ConnectDB;
import in.cutm.model.Room;

@SuppressWarnings("serial")
@WebServlet("/addNewRoom")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class AddRoomServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String location = req.getParameter("location");
		String roomIdStr = req.getParameter("roomNumber");
		String category = req.getParameter("category");
		String capacityStr = req.getParameter("capacity");
		String priceStr = req.getParameter("pricePerNight");
		String ac = req.getParameter("ac");
		String meal = req.getParameter("meal");
		String wifi = req.getParameter("wifi");
		String couple = req.getParameter("couple");
		String parking = req.getParameter("parking");
		Part photoStr = req.getPart("roomImage");
		String status = req.getParameter("status");
		
		int roomId = Integer.parseInt(roomIdStr);
		int capacity = Integer.parseInt(capacityStr);
		double price = Double.parseDouble(priceStr);
		InputStream photo = photoStr.getInputStream();
		
		Room rm = new Room(location, roomId, category, capacity, price, ac, meal, wifi, couple, parking, photo, status);
		
		RoomDao daoRoom = new RoomDao(ConnectDB.dbconnect());
		
		javax.servlet.http.HttpSession session = req.getSession();
		
		if (daoRoom.isAddedNewRoom(rm)) {
			session.setAttribute("addRoomMsg", "Room added successfully...!");
			resp.sendRedirect("addRoom.jsp");
		} else {
			session.setAttribute("failRommAddition", "Room can't be added due to server error");
			resp.sendRedirect("addRoom.jsp");
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
//		try {
//			PreparedStatement ps = con.prepareStatement("INSERT INTO tmp_table (text, image) VALUES (?, ?)");
//			int num = Integer.parseInt(number);
//			InputStream streamImage = roomImage.getInputStream();
//
//			ps.setInt(1, num);
//			ps.setBlob(2, streamImage);
//
//			int row = ps.executeUpdate();
//
//			if (row > 0) {
//				resp.getWriter().println("successfull");
//			} else {
//				resp.getWriter().println("Fail upload");
//			}
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

	}
}
