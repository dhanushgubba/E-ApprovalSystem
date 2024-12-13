<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
body {
	background-image: url('../img/image9.jpg');
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
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_users.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-secondary"></i><br>
							<h4>Add User</h4>
							-------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="view_users.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-user fa-3x text-primary"></i><br>
							<h4>All Users</h4>
							-------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="view_documents.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-user-minus fa-3x"></i></i><br>
							<h4>View Documents</h4>
							-------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-danger"></i><br>
							<h4>Logout</h4>
							-------------
						</div>
					</div>
				</a>
			</div>

		</div>

	</div>


	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do you want to Logout</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="../logout" type="button"
							class="btn btn-primary text-white">Logout</a>

					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<div style="margin-top: 290px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>