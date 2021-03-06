<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="jstl_core" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<form>
			<input type="text" name="tkps" placeholder="Tên đăng nhập" id="user">
			<br>
			<input type="password" name="tkps" placeholder="Mật khẩu" id="pass">
			<br>
			<input type="button" name="buttom" value="Đăng nhập" onclick="replace()">
		</form>
		<div class="footer">
			<span>Bạn quên mật khẩu? <a href="#">Quên mật khẩu</a></span>
			<br>
			<span class="sp1">Hướng dẫn quên mật khẩu? <a href="#">Xem hướng dẫn</a></span>
		</div>
	</div>
	<script type="text/javascript">
		function replace(){ 
			var stru = document.getElementById("user").value;
			var strp = document.getElementById("pass").value;
			if((stru == "admin") && (strp == "a") ){
				window.location.replace('${pageContext.servletContext.contextPath}/adminindex');
			}else{
				alert("Tai khoan mat khau khong chinh xac");
			}
		}
	</script>
</body>
</html>