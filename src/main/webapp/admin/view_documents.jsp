<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: View Documents</title>
<%@include file="allCss.jsp" %>
<style type="text/css">
body {
	background-image: url('../img/image4.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
	<h3 class="text-center">Hello Admin</h3>

	<table class="table table-striped">
		<thead class="bg-secondary">
			<tr>
				<th scope="col">Document Id</th>
				<th scope="col">Title</th>
				<th scope="col">Description</th>
				<th scope="col">Author</th>
				<th scope="col">Date</th>
				<th scope="col">Status</th>
				<th scope="col">Workflow ID</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>
				<a href="#" class="btn btn-sm btn-primary" >Edit</a>
				<a href="#" class="btn btn-sm btn-danger" >Delete</a>
				</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>
				<a href="#" class="btn btn-sm btn-primary" >Edit</a>
				<a href="#" class="btn btn-sm btn-danger" >Delete</a>
				</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>
				<a href="#" class="btn btn-sm btn-primary" >Edit</a>
				<a href="#" class="btn btn-sm btn-danger" >Delete</a>
				</td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>