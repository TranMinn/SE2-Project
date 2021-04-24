<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/view/client/static" var="url"></c:url>


    
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
									<li><a href="${pageContext.request.contextPath }/member/blog">Blog Details</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath }/member/blog">Blog</a></li>
							<li><a href="${pageContext.request.contextPath }/member/contact">Contact</a></li>
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
