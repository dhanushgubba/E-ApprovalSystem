package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.RequestDAOImpl;
import com.DB.DBConnect;
import com.entity.RequestDtls;

@WebServlet("/add_requests")
public class RequestsAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String requestname = req.getParameter("requestname");
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		String status = req.getParameter("status");
		
		RequestDtls r = new RequestDtls(requestname,title,description,status);
		
		RequestDAOImpl dao = new RequestDAOImpl(DBConnect.getConn());
		
		boolean f = dao.addRequests(r);
		
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("succMsg", "Request Added Successfully");
			resp.sendRedirect("add_requests.jsp");
		}else {
			session.setAttribute("failedMsg", "Something wrong on server");
			resp.sendRedirect("add_requests.jsp");
		}
	}

}
