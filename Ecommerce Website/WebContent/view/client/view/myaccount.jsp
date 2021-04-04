<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Account</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-10">
				<h1>User name</h1>
			</div>
		</div>

		<form class="form" action="${myaccount }" method="post"
			id="registrationForm" enctype="multipart/form-data">
			<div class="row">
				<div class="col-sm-3">
					<!--left col-->
					<c:url value="/member/myaccount" var="myaccount"></c:url>


					<input name="role" value="${sessionScope.account.roleId }"
						hidden=""> <input name="id"
						value="${sessionScope.account.id }" hidden="">
					<div class="text-center">
						<c:url value="/image?fname=${sessionScope.account.avatar }"
							var="imgUrl"></c:url>
						<img src="${imgUrl }" class="avatar img-circle img-thumbnail"
							alt="avatar">
						<h6>Upload a different photo...</h6>
						<input type="file" name="avatar"
							class="text-center center-block file-upload">
					</div>
					<br>
				</div>
				<!--/col-3-->
				<div class="col-sm-9">

					<div class="tab-content">
						<div class="tab-pane active" id="home">
							<hr>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="first_name">User Name:</label> <input type="text"
										class="form-control" name="username" id="first_name"
										value="${sessionScope.account.username }"
										title="enter your first name if any.">
								</div>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="first_name">Email:</label> <input type="text"
										class="form-control" name="email" id="first_name"
										value="${sessionScope.account.email }"
										title="enter your first name if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="phone">Password</label> <input type="password"
										class="form-control" name="password" id="phone"
										value="${sessionScope.account.password }"
										title="enter your phone number if any.">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Save
									</button>
									<button class="btn btn-lg" type="reset">
										<i class="glyphicon glyphicon-repeat"></i> Reset
									</button>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
</body>
</html>