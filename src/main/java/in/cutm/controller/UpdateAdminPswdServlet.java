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
@WebServlet("/updatePassword")
public class UpdateAdminPswdServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("newUsername");
		String email = req.getParameter("newEmail");
		String password = req.getParameter("newPassword");
		
		AdminCredential addCred = new AdminCredential(userName, email, password);
		
		AdminCredentialDao daoAdmin = new AdminCredentialDao(ConnectDB.dbconnect());
		
		javax.servlet.http.HttpSession session = req.getSession();
		
		if (daoAdmin.isPasswordUpdated(addCred)) {
			session.setAttribute("updateAdminSessionMsg", "Password Updated successfully...");
			resp.sendRedirect("adminLogin.jsp");
		} else {
			session.setAttribute("updateFailMsg", "Update failed please update again..!!");
			resp.sendRedirect("updateAdminPassword.jsp");
		}
	}
}
