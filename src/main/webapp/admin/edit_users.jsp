<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import ="com.DAO.UserDAOImpl" %>
<%@page import="com.DB.DBConnect"%>
<%@page import ="com.entity.User" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin : Add Users</title>
    <%@include file="allCss.jsp"%>
    
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-body">
                        <h4 class="text-center">Edit User</h4>
                        
                        
                        <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                        User us = dao.getUsersById(id);
                        %>
                        
                        
                        <form action="../editusers" method="post">
                           <input type="hidden" name="id" value="<%=us.getId()%>">
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" class="form-control" id="name" name="name" required value="<%= us.getName()%>">
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" name="email" required value="<%= us.getEmail()%>" >
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label>
                                <input type="tel" class="form-control" id="phone" name="phno" required value="<%= us.getPhno()%>">
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="password" name="password" required value="<%= us.getPassword()%>">
                            </div>
                            <div class="form-group">
                                <label for="rpassword">Re-Type Password:</label>
                                <input type="password" class="form-control" id="rpassword" name="rpassword" required value="<%= us.getRpassword()%>">
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Update User</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 40px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
