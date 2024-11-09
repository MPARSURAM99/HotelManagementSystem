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
	
	public Date convertToSqlDate(String dateStr) throws ParseException{
		SimpleDateFormat inputFormat = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date utiDate = inputFormat.parse(dateStr);
		
		return new java.sql.Date(utiDate.getTime());
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fromDateStr = req.getParameter("fromDate");
		String toDateStr = req.getParameter("toDate");
		String location = req.getParameter("location");
		
		
			try {
				Date fromDate = convertToSqlDate(fromDateStr);
				Date toDate = convertToSqlDate(toDateStr);
				
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
		
		
		
		resp.sendRedirect("availableRoom.jsp");
		
		   
	}
}
