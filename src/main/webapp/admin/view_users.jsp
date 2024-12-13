<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.UserDAOImpl"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:All Users</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
body {
	background-image: url('../img/image8.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h3 class="text-center">Hello Admin</h3>
	
	<c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>


	<table class="table table-striped">
		<thead class="bg-secondary">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Password</th>
				<th scope="col">Re-Type Password</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			List<User> list = dao.getAllUsers();
			for (User us : list) {
			%>
			<tr>
				<td><%=us.getId()%></td>
				<td><%=us.getName()%></td>
				<td><%=us.getEmail()%></td>
				<td><%=us.getPhno()%></td>
				<td><%=us.getPassword()%></td>
				<td><%=us.getRpassword()%></td>
				<td><a href="edit_users.jsp?id=<%=us.getId()%>"
					class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a> 
					<a href="../delete?id=<%= us.getId() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i>Delete</a></td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
	<div style="margin-top: 130px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>