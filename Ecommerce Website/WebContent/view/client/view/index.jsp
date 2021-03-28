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
<title>Ashion</title>

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

	<jsp:include page="/view/client/view/categories.jsp"></jsp:include>

	<!-- Products -->
	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="section-title">
						<h4>New product</h4>
					</div>
				</div>
			</div>
			<div class="row property__gallery">


				<c:forEach items="${pwelcome }" var="p">
					<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>

					<div class="col-lg-3 col-md-4 col-sm-6">

						<div class="product__item">
							<div class="product__item__pic set-bg" data-setbg="${imgUrl }">
								<ul class="product__hover">
									<li><a href="${imgUrl }" class="image-popup"><span
											class="arrow_expand"></span></a></li>
									<li><a href="#"><span class="icon_heart_alt"></span></a></li>
									<li><a
										href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><span
											class="icon_bag_alt"></span></a></li>
								</ul>
							</div>

							<div class="product__item__text">
								<h6>
									<a
										href="${pageContext.request.contextPath }/product/detail?id=${p.id}">${p.name }</a>
								</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ ${p.price }</div>
							</div>

						</div>
					</div>

				</c:forEach>


			</div>
		</div>
	</section>
	<!-- Product Section End -->

	<jsp:include page="/view/client/view/others.jsp"></jsp:include>

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