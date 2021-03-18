<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="leftdm">
	<div class="left1dm">
		<div class="list-title-header">DANH MỤC SẢN PHẨM</div>
		<div class="left1-2dm">
			<ul>
				<c:forEach items = "${categories}" var="cate">
					<li><a href="${pageContext.servletContext.contextPath}/listsanpham?seo=${cate.seo}">${cate.name}</a></li>
					<!-- <li><a href="${pageContext.servletContext.contextPath}/dmnu">SAMSUNG</a></li>
					<li><a href="#doi">SONY</a></li>
					<li><a href="#adidas">NOKIA</a></li>
					<li><a href="#nike">LG</a></li>
					<li><a href="#vans">XIAOMI</a></li>
					<li><a href="#mcqueen">VIVO</a></li>
					<li><a href="#converse">OPPO</a></li> -->
				</c:forEach>
			</ul>
		</div>
	</div>
</div>