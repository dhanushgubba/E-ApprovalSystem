<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<%@include file="all_component/allCss.jsp"%>

<style>
/* Style for the 'X' button */
.close-button {
	position: absolute;
	top: 5px;
	right: 10px;
	background: transparent;
	border: none;
	font-size: 18px;
	font-weight: bold;
	cursor: pointer;
}

.close-button:hover {
	color: red;
}

/* Style for the login heading */
.login-heading {
	color: black;
}

body {
	background-image: url('img/image1.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
}
</style>
<script>
	function redirectToIndex() {
		window.location.href = 'index.jsp';
	}
</script>
</head>

<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar1.jsp"%>
	<div class="container">
		<div class="row mt-5">
			<!-- Increased the margin-top -->
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center login-heading">Login</h3>
						<button class="close-button" onclick="redirectToIndex()">X</button>

						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button>
								<br>
								<medium>Don't have an account? <a href="register.jsp">Create
									Account</a></medium>
							</div>

							<div class="text-center">
								<medium>Forgot password? <a href="forgotPassword.jsp">Reset
									it here</a></medium>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>