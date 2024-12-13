package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/editusers")
public class EditUsersServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
			String rpassword = req.getParameter("rpassword");
			
			User us = new User();
			us.setId(id);
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			us.setRpassword(rpassword);
			
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			
			boolean f = dao.updateEditUsers(us);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succMsg", "User Updated Successfully");
				resp.sendRedirect("admin/view_users.jsp");
			}else {
				session.setAttribute("failedMsg", "Something wrong on Server");
				resp.sendRedirect("admin/view_users.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}