package in.cutm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.cutm.dao.LocationDao;
import in.cutm.dbConnection.ConnectDB;
import in.cutm.model.Location;

@SuppressWarnings("serial")
@WebServlet("/addBranch")
public class AddBranchServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String location = req.getParameter("branchName");
		
		Location loc = new Location(location);
		
		LocationDao daoLoc = new LocationDao(ConnectDB.dbconnect());
		
		javax.servlet.http.HttpSession session = req.getSession();
		
		if (daoLoc.isAddLocation(loc)) {
			session.setAttribute("addLocMsg", "Location added successfully...!");
			resp.sendRedirect("addBranch.jsp");
		}
		
		
		
		
	}
}