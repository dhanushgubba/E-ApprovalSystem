<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User: Home</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
    a {
        text-decoration: none;
        color: black;
    }
    a:hover {
        text-decoration: none;
        color: black;
    }
    .centered-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80vh;
        text-align: center;
    }
    .card {
        margin: 20px;
    }
    body {
        background-image: url('img/image.jpg');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        background-repeat: no-repeat;
    }
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="centered-container">
		<div class="container">
			<div class="row">
				<div class="col-md-3 d-flex justify-content-center">
					<a href="add_requests.jsp">
						<div class="card">
							<div class="card-body">
								<i class="fa-solid fa-address-book fa-3x text-primary"></i><br>
								<h4>Submit a Request</h4>
								----------
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3 d-flex justify-content-center">
					<a href="add_documents.jsp">
						<div class="card">
							<div class="card-body">
								<i class="fa-solid fa-file fa-3x text-secondary"></i><br>
								<h4>Submit a Document</h4>
								--------
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3 d-flex justify-content-center">
					<a href="all_requests.jsp">
						<div class="card">
							<div class="card-body">
								<i class="fa-solid fa-street-view fa-3x text-warning"></i><br>
								<h4>View My Requests</h4>
								---------
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3 d-flex justify-content-center">
					<a href="all_documents.jsp">
						<div class="card">
							<div class="card-body">
								<i class="fa-regular fa-file fa-3x text-danger"></i><br>
								<h4>View My Documents</h4>
								---------
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
<div style="margin-top: 0px">
	<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>
