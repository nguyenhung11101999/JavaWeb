<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="jstl_core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- MENU SIDEBAR-->
<aside class="menu-sidebar d-none d-lg-block">
	<div class="logo">
		<a href="${base}/home"> <img
			src="${pageContext.servletContext.contextPath}/backend/images/icon/logo.png"
			alt="Cool Admin" />
		</a>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">
				<li><a href="chart.html"> <i class="fas fa-tachometer-alt"></i>Thống kê
				</a></li>
				<li><a href="chart.html"> <i class="fas fa-chart-bar"></i>Biểu đồ
				</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/table"> <i class="fas fa-table"></i>Sản phẩm
				</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/table2"> <i class="fas fa-table"></i>Danh mục
				</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/forms"> <i class="far fa-check-square"></i>Thêm
				</a></li>
				<li><a href="calendar.html"> <i class="fas fa-calendar-alt"></i>Phản hồi
				</a></li>
				<li><a href="map.html"> <i class="fas fa-map-marker-alt"></i>Địa chỉ
				</a></li>
				<li class="has-sub"><a class="js-arrow" href="#"> <i
						class="fas fa-copy"></i>Trang
				</a>
					<ul class="list-unstyled navbar__sub-list js-sub-list">
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="forget-pass.html">Forget Password</a></li>
					</ul></li>
				<li class="has-sub"><a class="js-arrow" href="#"> <i
						class="fas fa-desktop"></i>Giao diện
				</a>
					<ul class="list-unstyled navbar__sub-list js-sub-list">
						<li><a href="button.html">Button</a></li>
						<li><a href="badge.html">Badges</a></li>
						<li><a href="tab.html">Tabs</a></li>
						<li><a href="card.html">Cards</a></li>
						<li><a href="alert.html">Alerts</a></li>
						<li><a href="progress-bar.html">Progress Bars</a></li>
						<li><a href="modal.html">Modals</a></li>
						<li><a href="switch.html">Switchs</a></li>
						<li><a href="grid.html">Grids</a></li>
						<li><a href="fontawesome.html">Fontawesome Icon</a></li>
						<li><a href="typo.html">Typography</a></li>
					</ul></li>
			</ul>
		</nav>
	</div>
</aside>
<!-- END MENU SIDEBAR-->