<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="jstl_core" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6">
								<div class="card">
									<div class="card-header">
										<strong>Thêm Sản phẩm</strong>
									</div>
									<div class="card-body card-block">
										<sf:form
											action="${pageContext.servletContext.contextPath}/editproduct"
											method="post" modelAttribute="product"
											enctype="multipart/form-data">
											<sf:input path="id" type="hidden" />
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">Categories:</label>
												</div>
												<div class="col-12 col-md-9">
													<sf:select path="categories">
														<sf:options items="${categories}" itemValue="id"
															itemLabel="name" />
													</sf:select>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">Tile</label>
												</div>
												<div class="col-12 col-md-9">
													<sf:input path="title" cssClass="form-control" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">Price</label>
												</div>
												<div class="col-12 col-md-9">
													<sf:input path="price" cssClass="form-control" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">Short
														description</label>
												</div>
												<div class="col-12 col-md-9">
													<sf:textarea path="short_description"
														cssClass="form-control" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">Detail
														description</label>
												</div>
												<div class="col-12 col-md-9">
													<sf:textarea path="detail_description"
														cssClass="form-control" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">Image</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="file" class="form-control-file"
														name="productAvatar" />
												</div>
											</div>
											<div class="card-footer">
												<button type="submit" class="btn btn-primary btn-sm">
													<i class="fa fa-dot-circle-o"></i> Submit
												</button>
											</div>
										</sf:form>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /content -->

		</div>
	</div>
</body>

</html>
<!-- end document-->
