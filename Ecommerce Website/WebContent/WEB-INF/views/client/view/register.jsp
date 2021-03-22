<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/views/client/static" var="url"></c:url>
<title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="${url}/css/style2.css">
</head>
<body>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Sign Up #05</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<h3 class="mb-4">Sign Up</h3>
						<form action="register" method="post" class="signup-form">
		      		<div class="form-group">
		      			<label class="label" for="name">Username</label>
		      			<input type="text" class="form-control" placeholder="Username" name="username">
		      		</div>
		      		<div class="form-group">
		      			<label class="label" for="email">Email Address</label>
		      			<input type="text" class="form-control" name="email" placeholder="email@gmail.com">
		      		</div>
	            <div class="form-group">
	            	<label class="label" for="password">Password</label>
	              <input id="password-field" type="password" class="form-control" name="password" placeholder="Password">
	            </div>
	            <div class="form-group">
	            	<label class="label" for="password">Confirm Password</label>
	              <input id="password-field" type="password" class="form-control" name="passwordConfirm" placeholder="Confirm Password">
	            </div>
	            <div class="form-group d-flex justify-content-end mt-5">
	            	<button type="submit" class="btn btn-primary submit"><span class="fa fa-paper-plane"></span></button>
	            </div>
	          </form>
	          <p class="text-center">Already have an account? <a href="${pageContext.request.contextPath }/login">Login In</a></p>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="${url}/js/jquery1.min.js"></script>
  <script src="${url}/js/popper1.js"></script>
  <script src="${url}/js/bootstrap2.min.js"></script>
  <script src="${url}/js/main2.js"></script>

</body>
</html>