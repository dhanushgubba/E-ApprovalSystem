package com.user.servlet;


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

@WebServlet("/forgot-password")
public class ForgotPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());

            HttpSession session = req.getSession();

            String username = req.getParameter("username");
            String newPassword = req.getParameter("newPassword");
            String confirmPassword = req.getParameter("confirmPassword");

            if (!newPassword.equals(confirmPassword)) {
                session.setAttribute("resetMsg", "New Password and Confirm Password do not match.");
                resp.sendRedirect("forgotPassword.jsp");
                return;
            }

            User user = dao.getUserByUsername(username);
            if (user != null) {
                boolean status = dao.updatePassword(username, newPassword);
                if (status) {
                    session.setAttribute("resetMsg", "Password reset successfully.");
                } else {
                    session.setAttribute("resetMsg", "Password reset failed. Try again.");
                }
            } else {
                session.setAttribute("resetMsg", "Username not found.");
            }
            resp.sendRedirect("forgotPassword.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
