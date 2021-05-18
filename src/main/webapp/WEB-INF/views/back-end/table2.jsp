<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title Page-->
<title>Charts</title>

<!-- Fontfaces CSS-->
<jsp:include page="/WEB-INF/views/back-end/common/Fontfaces.jsp"></jsp:include>

<!-- Bootstrap CSS-->
<jsp:include page="/WEB-INF/views/back-end/common/Bootstrap.jsp"></jsp:include>

<!-- Vendor CSS-->
<jsp:include page="/WEB-INF/views/back-end/common/Vendor.jsp"></jsp:include>

<!-- Main CSS-->
<jsp:include page="/WEB-INF/views/back-end/common/Main.jsp"></jsp:include>
</head>

<body>
	<div class="page-wrapper">
		<jsp:include page="/WEB-INF/views/back-end/common/MENU _SIDEBAR.jsp"></jsp:include>
		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<jsp:include page="/WEB-INF/views/back-end/common/HEADER_DESKTOP.jsp"></jsp:include>
			<!-- content -->
			<div class="main-content">
				<!-- DATA TABLE -->
				<h3 class="title-5 m-b-35">Danh mục sản phẩm</h3>
				<div class="table-data__tool">
					<div class="table-data__tool-right">
						<a href="${base}/forms2"><button
								class="au-btn au-btn-icon au-btn--green au-btn--small">
								<i class="zmdi zmdi-plus"></i>Thêm danh mục
							</button></a>
					</div>
				</div>
				<div class="table-responsive table-responsive-data2">
					<table class="table table-data2">
						<thead>
							<tr>
								<th><label class="au-checkbox"> <input
										type="checkbox"> <span class="au-checkmark"></span>
								</label></th>
								<th>Mã</th>
								<th>Tên</th>
								<th>Mô tả</th>
								<th>Trạng thái</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${categories}" var="cate">
								<tr class="tr-shadow">
									<td><label class="au-checkbox"> <input
											type="checkbox"> <span class="au-checkmark"></span>
									</label></td>
									<td>${cate.id}</td>
									<td><span class="block-email">${cate.name}</span></td>
									<td class="desc">${cate.description}</td>
									<td><span class="status--process">Có sản phẩm</span></td>
									<td>
										<div class="table-data-feature">
											<a
												href="${pageContext.servletContext.contextPath}/editcategory/${cate.id}"><button
													class="item" data-toggle="tooltip" data-placement="top"
													title="Edit">
													<i class="zmdi zmdi-edit"></i>
												</button></a>
											<form
												action="${pageContext.servletContext.contextPath}/deletecategory?id=
												${cate.id}"
												method="post">
												<button class="item" data-toggle="tooltip"
													data-placement="top" title="Delete">
													<i class="zmdi zmdi-delete"></i>
												</button>
											</form>
										</div>
									</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<!-- END DATA TABLE -->
			</div>
			<!-- /content -->

		</div>
	</div>
</body>

</html>
<!-- end document-->
