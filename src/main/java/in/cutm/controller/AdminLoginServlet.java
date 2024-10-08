

package in.cutm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.cutm.dao.AdminCredentialDao;
import in.cutm.dbConnection.ConnectDB;
import in.cutm.model.AdminCredential;

@SuppressWarnings("serial")
@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		javax.servlet.http.HttpSession session =  req.getSession();
		String adminEmail = req.getParameter("adminEmail");
		String adminPassword = req.getParameter("adminPassword");
		
		AdminCredential addCred = new AdminCredential(adminEmail, adminPassword);
		AdminCredentialDao daoAdmin = new AdminCredentialDao(ConnectDB.dbconnect());

		if (daoAdmin.isLoginSuccessful(addCred)) {
			resp.sendRedirect("adminDashboard.jsp");
		} else {
			session.setAttribute("loginFailMsg", "Invalid Credential....!");
			resp.sendRedirect("adminLogin.jsp");
		}
	}
}