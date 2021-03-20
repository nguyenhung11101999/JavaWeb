<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>welcome</title>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</head>
<body>
	<div class="haui">
		<div class="title"></div>
		<div class="logo">
			<p class="p1">LOGIN</p>
		</div>
		<hr>
		<form action="/perform_login" method="post">
			<c:if test="${not empty param.login_error}">
				<div class="alert alert-danger" role="alert">Login attempt was
					not successful, try again.</div>
			</c:if>
			<input type="text" name="username" placeholder="Tên đăng nhập"
				id="user"> <br> <input type="password" name="password"
				placeholder="Mật khẩu" id="pass"> <br>
			<div class="col-md-12">
				<button class="btn btn-primary">Login</button>
			</div>
		</form>
		<div class="footer">
			<span>Bạn quên mật khẩu? <a href="#">Quên mật khẩu</a></span> <br>
			<span class="sp1">Hướng dẫn quên mật khẩu? <a href="#">Xem
					hướng dẫn</a></span>
		</div>
	</div>
</body>
</html>