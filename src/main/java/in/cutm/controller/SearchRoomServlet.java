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

@SuppressWarnings("serial")
@WebServlet("/searchRoom")
public class SearchRoomServlet extends HttpServlet{
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		javax.servlet.http.HttpSession session = req.getSession();
		String fromDateStr = req.getParameter("fromDate");
		String toDateStr = req.getParameter("toDate");
		session.setAttribute("fromDate", fromDateStr);
		session.setAttribute("toDate", toDateStr);
		String location = req.getParameter("location");
		
		

			
		
			
		
		resp.sendRedirect("availableRoom.jsp");
		
		   
	}
}
