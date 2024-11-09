package in.cutm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.cutm.dao.ReceptionCredentialDao;
import in.cutm.dbConnection.ConnectDB;
import in.cutm.model.ReceptionCredential;


@SuppressWarnings("serial")
@WebServlet("/receptionLogin")
public class ReceptionLoginServelet extends HttpServlet {

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	javax.servlet.http.HttpSession session =  req.getSession();
	String receptionLoction = req.getParameter("receptionLocation");
	String receptionPassword = req.getParameter("receptionPassword");
	
	ReceptionCredential addCred = new ReceptionCredential(receptionLoction, receptionPassword);
	ReceptionCredentialDao daoReception = new ReceptionCredentialDao(ConnectDB.dbconnect());
	
	if (daoReception.isLoginSuccessful(addCred)) {
		resp.sendRedirect("receptionistDashboard.jsp");
	} else {
		session.setAttribute("loginFailMsg", "Invalid Credential....!");
		
		
		resp.sendRedirect("receptionLogin.jsp");
	}
	
	
}
	
	
}
