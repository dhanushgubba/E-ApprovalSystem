<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<div class="container-fluid p-3">

	<div class="row">
		<div class="col-md-3 text-success font-weight-bold">
			<h3>
				<i class="fa-solid fa-file"></i> E-Approval
			</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>


		<c:if test="${not empty userobj}">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user"></i>Login</a>
					<a href="register.jsp" class="btn btn-success"><i
					class="fa-solid fa-user"></i>Register</a>

			</div>
		</c:if>


		<c:if test="${empty userobj}">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a> <a
					href="register.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user"></i> Register</a>
			</div>
		</c:if>
	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>

		</ul>
	</div>

</nav>