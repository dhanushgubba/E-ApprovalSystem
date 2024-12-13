<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User: Add Requests</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
body {
	background-image: url('img/image5.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
}
</style>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Request</h4>
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						

						<form action="./add_requests" method="post">
							<div class="form-group">
								<label for="requestname">Name:</label> <input type="text"
									class="form-control" id="requestname" name="requestname"
									required>
							</div>
							<div class="form-group">
								<label for="title">Title:</label> <input type="text"
									class="form-control" id="title" name="title" required>
							</div>
							<div class="form-group">
								<label for="description">Description:</label>
								<textarea class="form-control" id="description"
									name="description" required></textarea>
							</div>
							<div class="form-group">
								<label for="status">Status:</label> <select class="form-control"
									id="status" name="status" required>
									<option value="Pending">Pending</option>
									<option value="Approved">Approved</option>
									<option value="Rejected">Rejected</option>
								</select>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Add
								Request</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 50px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>
