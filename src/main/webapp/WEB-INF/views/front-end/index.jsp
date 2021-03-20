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
<title>Wellcome</title>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>

</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<!-- slide-menu -->
		<div class="slide-menu">
			<img src="images/slide1.jpg" id="imgSlide">
			<div class="next">next</div>
			<div class="prev">prev</div>
		</div>
		<!-- /slide-menu -->
		<!-- content -->
		<div class="content">
			<jsp:include page="/WEB-INF/views/front-end/common/left.jsp"></jsp:include>
			<div class="main">
				<!-- spkm -->
				<div class="main-spkm" id="spkm">
					<div class="list-title-header">SẢN PHẨM KHUYẾN MÃI</div>
					<div>
						<div>
							<div class="main-content">
								<c:forEach items="${products}" var="products">
									<div>
										<a href="${pageContext.servletContext.contextPath}/detail?id=${products.id}"><img
											src="${pageContext.servletContext.contextPath}/upload/${products.avatar}"></a>
										<div class="main-p">${products.title}</div>
										<div class="main-p">${products.price}</div>
										<div class="main-ul">
											<ul>
												<li><a href=""
													onclick="Cart.saveCartItem(${products.id},1)">Mua</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail?id=${products.id}"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="main-content">
								<c:forEach items="${products}" var="products">
									<div>
										<a href="${pageContext.servletContext.contextPath}/detail"><img
											src="${pageContext.servletContext.contextPath}/upload/${products.avatar}"></a>
										<div class="main-p">${products.title}</div>
										<div class="main-p">${products.price}</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="content-end">
							<div>
								<tag:paginate offset="${productSearch.offset }"
									count="${productSearch.count }" uri="${pageUrl}" />
							</div>
						</div>
					</div>
					<!-- /spkm -->
					<!-- spmoi -->
					<div class="main-spmoi" id="spmoi">
						<div class="list-title-header">SẢN PHẨM MỚI</div>
						<div>
							<div>
								<div class="main-content">
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="main-content">
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="content-end">
								<div>
									<div>
										<a href="#">&lt;</a>
									</div>
									<div>
										<a href="#">1</a>
									</div>
									<div>
										<a href="#">2</a>
									</div>
									<div>
										<a href="#">3</a>
									</div>
									<div>
										<a href="#">4</a>
									</div>
									<div>
										<a href="#">5</a>
									</div>
									<div>
										<a href="#">&gt;</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /spmoi -->
					<!-- spbanchay -->
					<div class="main-spmoi" id="spbanchay">
						<div class="list-title-header">SẢN PHẨM BÁN CHẠY</div>
						<div>
							<div>
								<div class="main-content">
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="main-content">
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="content-end">
								<div>
									<div>
										<a href="#">&lt;</a>
									</div>
									<div>
										<a href="#">1</a>
									</div>
									<div>
										<a href="#">2</a>
									</div>
									<div>
										<a href="#">3</a>
									</div>
									<div>
										<a href="#">4</a>
									</div>
									<div>
										<a href="#">5</a>
									</div>
									<div>
										<a href="#">&gt;</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /spbanchay -->
					<!-- spthanhly -->
					<div class="main-spmoi" id="spthanhly">
						<div class="list-title-header">SẢN PHẨM THANH LÝ</div>
						<div>
							<div>
								<div class="main-content">
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="main-content">
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
									<div>
										<img src="images/sp.jpg">
										<div class="main-p">Doctor Martens</div>
										<div class="main-p">1.200.000</div>
										<div class="main-ul">
											<ul>
												<li><a href="#">Mua hàng</a></li>
												<li><a href="#">Đánh giá</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/detail"
													target="_blanh">Chi tiết</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="content-end">
								<div>
									<div>
										<a href="#">&lt;</a>
									</div>
									<div>
										<a href="#">1</a>
									</div>
									<div>
										<a href="#">2</a>
									</div>
									<div>
										<a href="#">3</a>
									</div>
									<div>
										<a href="#">4</a>
									</div>
									<div>
										<a href="#">5</a>
									</div>
									<div>
										<a href="#">&gt;</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /spthanhly -->
				</div>
				<jsp:include page="/WEB-INF/views/front-end/common/right.jsp"></jsp:include>
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