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
<title>List Cart</title>

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
						<a href="${pageContext.request.contextPath }"><i class="fa fa-home"></i> Home</a> <span>Shopping
							cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->


	<!-- Shop Cart Section Begin -->
	<section class="shop-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shop__cart__table">
						<table>
							<thead>
								<tr>
									<th>Product</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
									<th></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${sessionScope.cart}" var="map">
									<tr>
										<c:url value="/image?fname=${map.value.product.image }"
											var="imgUrl"></c:url>
										<td class="cart__product__item"><img src="${imgUrl}"
											alt="">
											<div class="cart__product__item__title">
												<h6>${map.value.product.name }</h6>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
											</div></td>
										<td class="cart__price">$ ${map.value.product.price }</td>
										<td class="cart__quantity">${map.value.quantity }</td>
										<td class="cart__total">$ ${map.value.product.price * map.value.quantity }</td>

										<td class="cart__close"><a
											href="${pageContext.request.contextPath}/member/cart/remove?pId=${map.value.product.id}">
												<span class="icon_close"></span>
										</a></td>
									</tr>
								</c:forEach>


							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="cart__btn">
						<a href="${pageContext.request.contextPath }">Continue Shopping</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="cart__btn update__btn">
						<a href="#"><span class="icon_loading"></span> Update cart</a>
					</div>
				</div>
			</div>
			
			<div class="row">

				<div class="col-lg-4 offset-lg-2">
					<div class="cart__total__procced">
						<h6>Cart total</h6>
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
						<a href="${pageContext.request.contextPath }/member/order" class="primary-btn">Proceed to checkout</a>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Shop Cart Section End -->

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