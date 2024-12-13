<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User: Add Documents</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
body {
	background-image: url('img/images3.jpg');
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
						<h4 class="text-center">Add Document</h4>
						
						<c:if test="${not empty succMsg}">
						  <p class="text-center text-success">${succMsg}</p>
						  <c:remove var="succMsg" scope="session" />
						</c:if>
						
						<c:if test="${not empty failedMsg}">
						  <p class="text-center text-danger">${failedMsg}</p>
						  <c:remove var="failedMsg" scope="session" />
						</c:if>
						
						<form action="add_documents" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="documentName">Document Name</label> <input
									type="text" class="form-control" id="documentName"
									name="documentname" required>
							</div>
							<div class="form-group">
								<label for="documentDescription">Document Description</label>
								<textarea class="form-control" id="documentDescription"
									name="documentdesc" required></textarea>
							</div>
							<div class="form-group">
								<label for="documentType">Document Type</label> <select
									class="form-control" id="documentType" name="documenttype"
									required>
									<option value="JPG">JPG</option>
									<option value="PDF">PDF</option>
									<option value="Word">Word</option>
									<option value="Excel">Excel</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlFile1">Upload File</label> <input type="file"
									class="form-control-file" id="exampleFormControlFile1" name="docf" required>
							</div>
							<button type="submit" class="btn btn-primary">Upload</button>
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