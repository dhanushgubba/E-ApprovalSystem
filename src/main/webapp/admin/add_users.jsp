<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Add Users</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
body {
	background-image: url('../img/image1.jpg');
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
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card mt-5">
					<div class="card-body">
						<h4 class="text-center">Add User</h4>
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>


						<form action="../add_users" method="post">
							<div class="form-group">
								<label for="name">Name:</label> <input type="text"
									class="form-control" id="name" name="name" required>
							</div>
							<div class="form-group">
								<label for="email">Email:</label> <input type="email"
									class="form-control" id="email" name="email" required>
							</div>
							<div class="form-group">
								<label for="phone">Phone:</label> <input type="tel"
									class="form-control" id="phone" name="phno" required>
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>
							<div class="form-group">
								<label for="rpassword">Re-Type Password:</label> <input
									type="password" class="form-control" id="rpassword"
									name="rpassword" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Add
								User</button>
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
