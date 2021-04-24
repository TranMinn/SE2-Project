<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:url value="/view/admin/static" var="url"></c:url>
<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li class="text-center"><img src="${url}/img/find_user.png"
				class="user-image img-responsive" /></li>


			<li><a class="active-menu" href="#"><i
					class="fa fa-dashboard fa-3x"></i> Dashboard</a></li>
			<li><a
				href="${pageContext.request.contextPath }/admin/product/list"><i
					class="fa fa-desktop fa-3x"></i> Product Management</a>
				<ul class="nav nav-second-level">
					<li><a href="${pageContext.request.contextPath }/admin/product/add">Add New Product</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/product/list">List All Products</a></li>
				</ul></li>
				
				
			<li><a
				href="${pageContext.request.contextPath }/admin/user/list"><i
					class="fa fa-qrcode fa-3x"></i> USER Management</a>
					<ul class="nav nav-second-level">
					<li><a href="${pageContext.request.contextPath }/admin/user/add">Add New User</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/user/list">List All Users</a></li>
				</ul>
					</li>
			<li><a
				href="${pageContext.request.contextPath }/admin/order/list"><i
					class="fa fa-bar-chart-o fa-3x"></i> Order Management</a></li>
					
				<li><a
				href="${pageContext.request.contextPath }/admin/category/list"><i
					class="fa fa-table fa-3x"></i> CATEGORY Management</a>
					<ul class="nav nav-second-level">
					<li><a href="${pageContext.request.contextPath }/admin/category/add">Add New Category</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/category/list">List All Categories</a></li>
				</ul>
					</li>	
					
			<li><a
				href="${pageContext.request.contextPath }/admin/voucher/list"><i
					class="fa fa-edit fa-3x"></i> VOUCHER Management</a>
					<ul class="nav nav-second-level">
					<li><a href="${pageContext.request.contextPath }/admin/voucher/add">Add New Voucher</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/voucher/list">List All Vouchers</a></li>
				</ul>
					</li>
					

		</ul>

	</div>

</nav>