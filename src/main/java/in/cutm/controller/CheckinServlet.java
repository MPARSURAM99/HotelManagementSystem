package in.cutm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.cutm.dao.BookRoomDao;
import in.cutm.dbConnection.ConnectDB;

@WebServlet("/checkin")
public class CheckinServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		javax.servlet.http.HttpSession session = req.getSession();
		String idString = req.getParameter("id");
		int id = Integer.parseInt(idString);
		
		BookRoomDao brDao = new BookRoomDao(ConnectDB.dbconnect());
		if (brDao.isCheckedIn(id)) {
			session.setAttribute("checkinMsg", "Room id " + id + " is checkedin successfully");
			resp.sendRedirect("upComing.jsp");
		}
	}
}
