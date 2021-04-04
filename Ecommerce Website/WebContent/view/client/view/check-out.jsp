<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Check Out</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cookie&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="${url}/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/style.css" type="text/css">

</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<jsp:include page="/view/client/view/navbar.jsp"></jsp:include>


	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="./index.html"><i class="fa fa-home"></i> Home</a> <span>Shopping
							cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6 class="coupon__link">
						<span class="icon_tag_alt"></span> <a href="#">Have a coupon?</a>
						Click here to enter your code.
					</h6>
				</div>
			</div>
			<form action="" class="checkout__form">
				<div class="row">
					<div class="col-lg-8">
						<h5>Billing detail</h5>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>
										First Name <span>*</span>
									</p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>
										Last Name <span>*</span>
									</p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-12">

								<div class="checkout__form__input">
									<p>
										Address <span>*</span>
									</p>
									<input type="text" name = "address" placeholder="Address">
								</div>

							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>
										Phone <span>*</span>
									</p>
									<input type="text">
								</div>
							</div>

							<div class="col-lg-12">
								<div class="checkout__form__input">
									<p>
										Oder notes <span>*</span>
									</p>
									<input type="text"
										placeholder="Note about your order, e.g, special noe for delivery">
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="checkout__order">
							<h5>Your order</h5>
							<div class="checkout__order__total">
								<ul>
									<li>Subtotal <c:set var="total" value="${0}" /> <c:forEach
											items="${sessionScope.cart}" var="map">
											<c:set var="total"
												value="${total + map.value.quantity * map.value.product.price}" />
										</c:forEach>
										<div class="total-result-in">

											<span>$ ${total }</span></li>

									<li>Total <span>$ ${total }</span></li>
								</ul>
							</div>
							<div class="checkout__order__widget">
								<label for="o-acc"> Create an acount? <input
									type="checkbox" id="o-acc"> <span class="checkmark"></span>
								</label>
								<p>Create am acount by entering the information below. If
									you are a returing customer login at the top of the page.</p>
								<label for="check-payment"> Cheque payment <input
									type="checkbox" id="check-payment"> <span
									class="checkmark"></span>
								</label> <label for="paypal"> PayPal <input type="checkbox"
									id="paypal"> <span class="checkmark"></span>
								</label>
							</div>
							<a href="${pageContext.request.contextPath }/member/checkout" class="primary-btn">Proceed to checkout</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- Checkout Section End -->


	<jsp:include page="/view/client/view/insta.jsp"></jsp:include>

	<jsp:include page="/view/client/view/footer.jsp"></jsp:include>


	<!-- Js Plugins -->
	<script src="${url}/js/jquery-3.3.1.min.js"></script>
	<script src="${url}/js/bootstrap.min.js"></script>
	<script src="${url}/js/jquery.magnific-popup.min.js"></script>
	<script src="${url}/js/jquery-ui.min.js"></script>
	<script src="${url}/js/mixitup.min.js"></script>
	<script src="${url}/js/jquery.countdown.min.js"></script>
	<script src="${url}/js/jquery.slicknav.js"></script>
	<script src="${url}/js/owl.carousel.min.js"></script>
	<script src="${url}/js/jquery.nicescroll.min.js"></script>
	<script src="${url}/js/main.js"></script>

</body>
</html>