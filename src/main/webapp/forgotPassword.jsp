<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background: #f7f7f7;
	background-image: url('img/image10.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
}

.forgot-password-form {
	padding: 50px 0;
	position: relative;
}

.forgot-password-form form {
	background: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	max-width: 400px;
	margin: auto;
}

.forgot-password-form h3 {
	margin-bottom: 30px;
}

.forgot-password-form .form-group {
	margin-bottom: 20px;
}

.forgot-password-form .form-control {
	border-radius: 5px;
	padding: 15px;
}

.forgot-password-form .form-control::placeholder {
	color: rgba(0, 0, 0, 0.5);
	opacity: 1;
	text-align: left;
}

.forgot-password-form .form-control:focus {
	box-shadow: none;
	border-color: #ff6b6b;
}

.forgot-password-form .btn {
	background: #007bff; /* Blue color */
	border: none;
	border-radius: 5px;
	padding: 15px;
	min-width: 140px;
}

.forgot-password-form .btn:hover {
	background: #ff3b3b;
}

.success-msg {
	color: green;
}

.error-msg {
	color: green;
}

/* Style for the 'X' button */
.close-button {
	position: absolute;
	top: 5px;
	right: 120px;
	background: transparent;
	border: none;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
}

.close-button:hover {
	color: red;
}
</style>
<script>
	function validateForm() {
		var newPassword = document.getElementById("newPassword").value;
		var confirmPassword = document.getElementById("confirmPassword").value;
		if (newPassword !== confirmPassword) {
			alert("New Password and Confirm Password do not match.");
			return false;
		}
		return true;
	}

	function redirectToLogin() {
		window.location.href = 'login.jsp';
	}
</script>
</head>
<body>
	<div class="container forgot-password-form">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form action="forgot-password" method="post"
					onsubmit="return validateForm()">
					<h3 class="text-center">Forgot Password</h3>
					<button class="close-button" onclick="redirectToLogin()">X</button>
					<!-- Display error or success message -->
					<c:choose>
						<c:when test="${not empty resetMsg}">
							<c:choose>
								<c:when test="${resetMsgType == 'success'}">
									<h5 class="text-center success-msg">${resetMsg}</h5>
								</c:when>
								<c:otherwise>
									<h5 class="text-center error-msg">${resetMsg}</h5>
								</c:otherwise>
							</c:choose>
							<c:remove var="resetMsg" scope="session" />
							<c:remove var="resetMsgType" scope="session" />
						</c:when>
					</c:choose>

					<div class="form-group">
						<input type="text" class="form-control" id="username"
							name="username" placeholder="Username" required="required">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="newPassword"
							name="newPassword" placeholder="New Password" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="confirmPassword"
							name="confirmPassword" placeholder="Confirm Password" required>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-block"
							style="color: white; background-color: #007bff;">Reset
							Password</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>