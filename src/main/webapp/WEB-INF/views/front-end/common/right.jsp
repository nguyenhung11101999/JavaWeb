<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="jstl_core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="right">
	<div class="right1">
		<div class="list-title-header">LIÊN HỆ</div>
		<div>
			<div class="right1-2-1">
				<div>
					<img src="images/right1-4.png">
				</div>
				<div>
					<a href="#">NMH@gmail.com</a>
				</div>
			</div>
			<div class="right1-2-1">
				<div>
					<img src="images/right1-4.png">
				</div>
				<div>
					<a href="#">NMH@gmail.com</a>
				</div>
			</div>
			<div class="right1-2-1">
				<div>
					<img src="images/right1-4.png">
				</div>
				<div>
					<a href="#">NMH@gmail.com</a>
				</div>
			</div>

		</div>
	</div>
	<div class="right2">
		<div class="list-title-header">Subscribe</div>
		<div class="right2-sub">
			<form method="post"
				action="${pageContext.servletContext.contextPath}/subscribe">
				<div class="container" style="background-color: white">
					<input type="text" placeholder="Name" name="name" id="subname">
					<input type="text" placeholder="Email address" name="mail"
						id="subemail"> <label> <input type="checkbox"
						checked="checked" name="subscribe"> Daily Newsletter
					</label>
				</div>
				<div class="container">
					<!-- <input type="button" value="Subscribe" id="BtnSub" onclick="subscribe()"> -->
					<input type="button" name="buttom" value="Send"
						onclick="Subscribe()">
				</div>
			</form>
		</div>
	</div>
</div>