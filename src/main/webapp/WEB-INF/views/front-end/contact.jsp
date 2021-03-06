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
		<div class="content">
			<jsp:include page="/WEB-INF/views/front-end/common/left.jsp"></jsp:include>
			<div class="main">
				<!-- --cach1-- -->
				<%-- <form class="main_form" method="post" action="${pageContext.servletContext.contextPath}/contact1">
					<div class="row">
						<div>
							<input placeholder="Your name" type="text" name="name" value="${name }">
						</div>
						<div>
							<input placeholder="Email" type="text" name="email">
						</div>
						<div>
							<input placeholder="Phone" type="text" name="phone">
						</div>
						<div>
							<textarea placeholder="Message"></textarea>
						</div>
						<div>
							<input type="submit" name="buttom" value="Send">
						</div>
					</div>
				</form> --%>
				<!-- --/cach1-- -->
				<!-- cach 2 -->
				<%-- <sf:form  class="main_form" method="post" action="${pageContext.servletContext.contextPath}/contact2" modelAttribute="contact">
					<div class="row">
						<div>
							<sf:input path="name" placeholder="Your name" type="text" name="name"/>
						</div>
						<div>
							<sf:input path="email" placeholder="Email" type="text" name="email"/>
						</div>
						<div>
							<sf:input path="phone" placeholder="Phone" type="text" name="phone"/>
						</div>
						<div>
							<sf:textarea path="content" placeholder="Message"/>
						</div>
						<div>
							<input type="submit" name="buttom" value="Send">
						</div>
					</div>
				</sf:form> --%>
				<!-- /cach 2 -->
				<!-- --cach3-- -->
				<form class="main_form" method="post"
					action="${pageContext.servletContext.contextPath}/contact3">
					<div class="row">
						<div>
							<input placeholder="Your name" type="text" name="name" id="name">
						</div>
						<div>
							<input placeholder="Email" type="text" name="email" id="email">
						</div>
						<div>
							<input placeholder="Phone" type="text" name="phone" id="phone">
						</div>
						<div>
							<textarea placeholder="Message" id="content"></textarea>
						</div>
						<div>
							<!-- <input type="submit" name="buttom" value="Send"> -->
							<input type="button" id="loginBtn" name="buttom" value="Send"
								onclick="SaveContact()">
						</div>
					</div>
				</form>
				<!-- --/cach3-- -->
			</div>
			<jsp:include page="/WEB-INF/views/front-end/common/right.jsp"></jsp:include>
		</div>
		<!-- /content -->
		<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
	<!-- /wrapper -->
	<!-- js -->

	<!-- /js -->
</body>
</html>