<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.RequestDAOImpl"%>
<%@page import="com.entity.RequestDtls"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User:All Documents</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
body {
	background-image: url('img/image4.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="text-center">
		<h4>Hello ${userobj.name}</h4>
		<table class="table table-striped">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Request Id</th>
					<th scope="col">Requester Name</th>
					<th scope="col">Request Title</th>
					<th scope="col">Request Description</th>
					<th scope="col">Status</th>
				</tr>
			</thead>
			<tbody>
				<%
				RequestDAOImpl dao = new RequestDAOImpl(DBConnect.getConn());
				List<RequestDtls> list = dao.getAllRequests();
				for (RequestDtls r : list) {
				%>
				<tr>
					<td><%=r.getRequestId()%></td>
					<td><%=r.getRequestname()%></td>
					<td><%=r.getTitle()%></td>
					<td><%=r.getDescription()%></td>
					<td><%=r.getStatus()%></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
	</div>
	<div style="margin-top: 250px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>