<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="jstl_core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- banner -->
<div class="banner">
	<div class="banner-logo">
		<a href="${pageContext.servletContext.contextPath}/index"><img
			src="images/banner-logo.jpg"></a>
	</div>
	<div class="banner-search">
		<div>
			<form action="${pageContext.servletContext.contextPath}/searchAll"
				method="post">
				<div class="banner-search1">
					<input type="text" placeholder="Tìm giày hoặc nhẵn hiệu"
						name="searchText">
					
				</div>
			</form>
			<div class="banner-search2">
				<a href="#"><img src="images/banner-search.png"></a>
			</div>
		</div>
	</div>
	<div class="banner-chose">
		<a href="#">HOTLINE: 091 234 5678</a>
	</div>
	<div class="banner-cart">
		<div>
			<span id="totalItemsInCart">${totalItem}</span> <a
				href="${base}/cart"><img src="images/cart.png"></a>
		</div>
	</div>
	<div class="banner-login">
		<div>
			<a href="/login"
				target="_blanh">Đăng nhập</a> <br> <a href="">Đăng ký</a> <br> <a href="/logout">Đăng xuất</a>
		</div>
	</div>
</div>
<!-- /banner -->
<!-- menu-top -->
<div class="menu-top">
	<ul>
		<li><a href="${pageContext.servletContext.contextPath}/danhmuc">DANH
				MỤC</a></li>
		<li><a
			href="${pageContext.servletContext.contextPath}/sanphamkhuyenmai">SẢN
				PHẨM KHUYẾN MÃI</a></li>
		<li><a
			href="${pageContext.servletContext.contextPath}/sanphammoi">SẢN
				PHẨM MỚI</a></li>
		<li><a
			href="${pageContext.servletContext.contextPath}/sanphambanchay">SẢN
				PHẨM BÁN CHẠY</a></li>
		<li><a
			href="${pageContext.servletContext.contextPath}/sanphamthanhly">SẢN
				PHẨM THANH THANH LÝ</a></li>
		<li><a href="${pageContext.servletContext.contextPath}/contact">CONTACT</a></li>
		<li><a
			href="${pageContext.servletContext.contextPath}/adminindex">ADMIN</a></li>
	</ul>
</div>
<!-- /menu-top -->