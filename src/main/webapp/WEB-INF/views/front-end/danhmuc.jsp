<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/pagingTagLibs.tld"%>
<!DOCTYPE html>
<html>
<head>
<title>welcome</title>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>

</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<!-- content -->
		<div class="contentdm">
			<jsp:include page="/WEB-INF/views/front-end/common/dmleft.jsp"></jsp:include>
			<div class="maindm">
				<!-- nam -->
				<div class="main-namdm" id="nam">
					<div class="list-title-header">${catename}</div>
					<div>
						<div>
							<div class="main-contentdm">
								<c:forEach items="${products}" var="products">
									<div>
										<a href="${pageContext.servletContext.contextPath}/detail"><img
											src="${pageContext.servletContext.contextPath}/upload${products.avatar}"></a>
										<div class="main-p">${products.title}</div>
										<div class="main-p">${products.price}</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail?id=${products.id}"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="content-enddm">
							<div class="col-lg-9 d-flex justify-content-center round">
								<tag:paginate offset="${productSearch.offset}"
									count="${productSearch.count}" uri="${pageUrl}" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /converse -->
	</div>
	</div>
	<!-- /content -->
	<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
	<!-- /wrapper -->
	<!-- js -->
	<script type="text/javascript">
		$(document).ready(function() {
			var slide = new Array();
			slide[0] = "images/slide1.jpg";
			slide[1] = "images/slide2.jpg";
			slide[2] = "images/slide3.jpg";
			var key = 0;
			$(".next").click(function() {
				$("#imgSlide").fadeOut(function() {
					$("#imgSlide").attr("src", slide[key]);
					$("#imgSlide").fadeIn();
					key++;
					if (key == slide.length)
						key = 0;
				});
			});
			$(".prev").click(function() {
				$("#imgSlide").fadeOut(function() {
					if (key == 0)
						key = slide.length - 1;
					$("#imgSlide").attr("src", slide[key]);
					$("#imgSlide").fadeIn();
					key--;
				});
			});
			// setInterval(function() {
			// 	$("#imgSlide").fadeOut(function() {
			// 		$("#imgSlide").attr("src",slide[key]);
			// 		$("#imgSlide").fadeIn();
			// 		key++;
			// 		if(key == slide.length)
			// 			key = 0;
			// 	});
			// },3000);
		});
	</script>
	<!-- /js -->
</body>
</html>