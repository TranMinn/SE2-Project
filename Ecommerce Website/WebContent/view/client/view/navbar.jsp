<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Nav Bar</title>
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
</head>
<body>
	   

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="#"><span class="icon_heart_alt"></span>
                <div class="tip">2</div>
            </a></li>
            <li><a href="#"><span class="icon_bag_alt"></span>
                <div class="tip">2</div>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="#">Login</a>
            <a href="#">Register</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->
    
	<!-- Header Section Begin -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-2">
					<div class="header__logo">
						<a href="./index.html"><img src="${url}/img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-xl-6 col-lg-7">
					<nav class="header__menu">
						<ul>
							<li class="active"><a
								href="${pageContext.request.contextPath }">Home</a></li>
							<li><a
								href="${pageContext.request.contextPath }/product/list">Shop</a></li>
							<li><a href="#">Pages</a>
								<ul class="dropdown">
									<li><a
										href="${pageContext.request.contextPath }/product/list">Product
											Page</a></li>
									<li><a
										href="${pageContext.request.contextPath }/member/cart">Shop
											Cart</a></li>
									<li><a
										href="${pageContext.request.contextPath }/member/order">Checkout</a></li>
									<li><a href="./blog-details.html">Blog Details</a></li>
								</ul></li>
							<li><a href="./blog.html">Blog</a></li>
							<li><a href="./contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__right">

						<c:choose>
							<c:when test="${sessionScope.account == null}">
								<div class="header__right__auth">
									<a href="${pageContext.request.contextPath }/login">Login</a> <a
										href="${pageContext.request.contextPath }/register">Register</a>
								</div>

							</c:when>
							<c:otherwise>
								<div class="header__right__auth">
									<a href="${pageContext.request.contextPath }/member/myaccount">My
										Account</a> <a href="${pageContext.request.contextPath }/logout">Logout</a>
								</div>

							</c:otherwise>
						</c:choose>


						<ul class="header__right__widget">
							<li><span class="icon_search search-switch"></span></li>


							<li><a href="#"><span class="icon_heart_alt"></span>
									<div class="tip">2</div> </a></li>


							<li><a href="${pageContext.request.contextPath}/member/cart">
							<span class="icon_bag_alt">${count }</span>
							
									<c:set var="count" value="${0}" /> 
							
									<c:forEach
										items="${sessionScope.cart}" var="map">
										<c:set var="count" value="${count + map.value.quantity}" />
									</c:forEach>
									<div class="tip">${count }</div> 
									
									
							</a></li>

						</ul>
					</div>
				</div>
			</div>
			
		</div>
	</header>
	<!-- Header Section End -->
	
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