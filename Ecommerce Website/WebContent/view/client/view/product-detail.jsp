<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Detail</title>

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

	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="./index.html"><i class="fa fa-home"></i> Home</a> <a
							href="#">Product </a> <span>Details</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="product__details__pic">
						<div class="product__details__slider__content">

							<c:url value="/image?fname=${product.image }" var="imgUrl"></c:url>
							<img class="product__big__img" src="${imgUrl}"
								alt="${product.name }">

						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="product__details__text">
						<h3>${product.name }</h3>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <span>( 138 reviews )</span>
						</div>
						<div class="product__details__price">$ ${product.price }</div>
						<p>${product.des }</p>

						<div class="product__details__button">


							<form name="f1" method="get"
								action="<c:url value="/member/cart/add"></c:url>">

								<div class="quantity">
									<span>Quantity:</span>
									<div class="pro-qty">
										<span class="dec qtybtn" value="-">-</span> 
										<input type="text"
											value="1" id='qty'> 
											<span class="inc qtybtn"
											value="+">+</span>
									</div>
								</div>

								<button type="submit" class="cart-btn">
									<span class="icon_bag_alt"></span> Add to cart
								</button>
							</form>

							<ul>
								<li><a href="#"><span class="icon_heart_alt"></span></a></li>
								<li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
							</ul>
						</div>
						<div class="product__details__widget">
							<ul>
								<li><span>Availability:</span>
									<div class="stock__checkbox">
										<label for="stockin"> In Stock <input type="checkbox"
											id="stockin"> <span class="checkmark"></span>
										</label>
									</div></li>
								<li><span>Available color:</span>
									<div class="color__checkbox">
										<label for="red"> <input type="radio"
											name="color__radio" id="red" checked> <span
											class="checkmark"></span>
										</label> <label for="black"> <input type="radio"
											name="color__radio" id="black"> <span
											class="checkmark black-bg"></span>
										</label> <label for="grey"> <input type="radio"
											name="color__radio" id="grey"> <span
											class="checkmark grey-bg"></span>
										</label>
									</div></li>
								<li><span>Available size:</span>
									<div class="size__btn">
										<label for="xs-btn" class="active"> <input
											type="radio" id="xs-btn"> xs
										</label> <label for="s-btn"> <input type="radio" id="s-btn">
											s
										</label> <label for="m-btn"> <input type="radio" id="m-btn">
											m
										</label> <label for="l-btn"> <input type="radio" id="l-btn">
											l
										</label>
									</div></li>
								<li><span>Promotions:</span>
									<p>Free shipping</p></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab">Description</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab">Specification</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab">Reviews ( 2 )</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<h6>Description</h6>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
									aut odit aut loret fugit, sed quia consequuntur magni dolores
									eos qui ratione voluptatem sequi nesciunt loret. Neque porro
									lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim
									ipsam voluptatem quia voluptas sit aspernatur aut odit aut
									loret fugit, sed quia ipsu consequuntur magni dolores eos qui
									ratione voluptatem sequi nesciunt. Nulla consequat massa quis
									enim.</p>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
									Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
									natoque penatibus et magnis dis parturient montes, nascetur
									ridiculus mus. Donec quam felis, ultricies nec, pellentesque
									eu, pretium quis, sem.</p>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<h6>Specification</h6>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
									aut odit aut loret fugit, sed quia consequuntur magni dolores
									eos qui ratione voluptatem sequi nesciunt loret. Neque porro
									lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim
									ipsam voluptatem quia voluptas sit aspernatur aut odit aut
									loret fugit, sed quia ipsu consequuntur magni dolores eos qui
									ratione voluptatem sequi nesciunt. Nulla consequat massa quis
									enim.</p>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
									Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
									natoque penatibus et magnis dis parturient montes, nascetur
									ridiculus mus. Donec quam felis, ultricies nec, pellentesque
									eu, pretium quis, sem.</p>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<h6>Reviews ( 2 )</h6>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
									aut odit aut loret fugit, sed quia consequuntur magni dolores
									eos qui ratione voluptatem sequi nesciunt loret. Neque porro
									lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim
									ipsam voluptatem quia voluptas sit aspernatur aut odit aut
									loret fugit, sed quia ipsu consequuntur magni dolores eos qui
									ratione voluptatem sequi nesciunt. Nulla consequat massa quis
									enim.</p>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
									Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
									natoque penatibus et magnis dis parturient montes, nascetur
									ridiculus mus. Donec quam felis, ultricies nec, pellentesque
									eu, pretium quis, sem.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="related__title">
						<h5>RELATED PRODUCTS</h5>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="${url}/img/product/related/rp-1.jpg">
							<div class="label new">New</div>
							<ul class="product__hover">
								<li><a href="${url}/img/product/related/rp-1.jpg"
									class="image-popup"><span class="arrow_expand"></span></a></li>
								<li><a href="#"><span class="icon_heart_alt"></span></a></li>
								<li><a href="#"><span class="icon_bag_alt"></span></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Buttons tweed blazer</a>
							</h6>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product__price">$ 59.0</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="${url}/img/product/related/rp-2.jpg">
							<ul class="product__hover">
								<li><a href="${url}/img/product/related/rp-2.jpg"
									class="image-popup"><span class="arrow_expand"></span></a></li>
								<li><a href="#"><span class="icon_heart_alt"></span></a></li>
								<li><a href="#"><span class="icon_bag_alt"></span></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Flowy striped skirt</a>
							</h6>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product__price">$ 49.0</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="${url}/img/product/related/rp-3.jpg">
							<div class="label stockout">out of stock</div>
							<ul class="product__hover">
								<li><a href="${url}/img/product/related/rp-3.jpg"
									class="image-popup"><span class="arrow_expand"></span></a></li>
								<li><a href="#"><span class="icon_heart_alt"></span></a></li>
								<li><a href="#"><span class="icon_bag_alt"></span></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Cotton T-Shirt</a>
							</h6>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product__price">$ 59.0</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="${url}/img/product/related/rp-4.jpg">
							<ul class="product__hover">
								<li><a href="${url}/img/product/related/rp-4.jpg"
									class="image-popup"><span class="arrow_expand"></span></a></li>
								<li><a href="#"><span class="icon_heart_alt"></span></a></li>
								<li><a href="#"><span class="icon_bag_alt"></span></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Slim striped pocket shirt</a>
							</h6>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product__price">$ 59.0</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Details Section End -->

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