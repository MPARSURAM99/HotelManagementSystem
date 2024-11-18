package in.cutm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.cutm.dao.BookRoomDao;
import in.cutm.dbConnection.ConnectDB;

@WebServlet("/bookingInformation")
public class BookingDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handles booking details retrieval
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        javax.servlet.http.HttpSession session = req.getSession();
        // Get the mobile number from the request
        String mob = req.getParameter("mobNumber");

        // Store it in the session for later use
        session.setAttribute("contact", mob);

        // Redirect to the booking details page
        resp.sendRedirect("bookingDetails.jsp");
    }
    
}
