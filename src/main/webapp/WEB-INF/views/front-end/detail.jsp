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
	<!-- wrapper -->
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<!-- content -->
		<div class="contentsp">
			<div class="leftsp">
				<fieldset>
					<div class="boxsp"><img src="images/1.jpg" id="imageMain"></div>
					<div class="subsp">
						<ul>
							<li><img id="image1" onclick="changeImage('image1');" src="images/1.jpg"></li>
							<li><img id="image2" onclick="changeImage('image2');" src="images/2.jpg"></li>
							<li><img id="image3" onclick="changeImage('image3');" src="images/3.jpg"></li>
							<li><img id="image4" onclick="changeImage('image4');" src="images/4.jpg"></li>
							<li><img id="image5" onclick="changeImage('image5');" src="images/5.jpg"></li>
						</ul>
					</div>
				</fieldset>
			</div>
			<div class="rightsp">
				<div>Giày Thể Thao XSPORT Adi.das Yeezy boost sesame</div>
				<div class="right-contentsp">
					<div class="right1sp">
						<div>
							<div>Nhãn hiệu:</div>
							<div>Giá:</div>
							<div>Giới tính:</div>
							<div>Xuất xứ:</div>
							<div>Phát hành:</div>
							<div>Phong cách:</div>
						</div>
						<div>
							<div>Adidas</div>
							<div>1.200.000 VNĐ</div>
							<div>Nam</div>
							<div>Mỹ</div>
							<div>1970</div>
							<div>Đơn giản</div>
						</div>
					</div>
					<div class="right2sp">
						<div>
							<fieldset>
								<legend>Kích cỡ</legend>
								<label>34</label>
								<input type="radio" name="size" value="35">
								<label>35</label>
								<input type="radio" name="size" value="35">
								<label>36</label>
								<input type="radio" name="size" value="36">
								<label>37</label>
								<input type="radio" name="size" value="37">
								<label>38</label>
								<input type="radio" name="size" value="38">
								<label>39</label>
								<input type="radio" name="size" value="39">
								<label>40</label>
								<input type="radio" name="size" value="40">
								<label>41</label>
								<input type="radio" name="size" value="41">
								<label>42</label>
								<input type="radio" name="size" value="42">
								<label>43</label>
								<input type="radio" name="size" value="43">
								<label>44</label>
								<input type="radio" name="size" value="44">
								<label>45</label>
								<input type="radio" name="size" value="44">
							</fieldset>
						</div>
						<div>
							<fieldset>
								<legend>Màu sắc</legend>
								<label>Đen</label>
								<input type="checkbox" name="color" value="Đen">
								<label>Đỏ</label>
								<input type="checkbox" name="color" value="Đỏ">
								<label>Trắng</label>
								<input type="checkbox" name="color" value="Trắng">
								<label>Vàng</label>
								<input type="checkbox" name="color" value="Vàng">
							</fieldset>
						</div>
					</div>
				</div>
				<div class="right-ghsp">
					<button>Thêm vào giỏ hàng</button>
				</div>
			</div>
		</div>
		<!-- /content -->
		<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
	<!-- /wrapper -->
	<!-- js -->
	<script type="text/javascript">
		function changeImage(imageId) {
			//lay gia tri cua thuoc tinh src
			var src = document.getElementById(imageId).getAttribute("src");
			//thay doi anh chinh
			document.getElementById("imageMain").setAttribute("src", src);
			//resert duong vien cua cac the html image
			document.getElementById('image1').setAttribute("style", "border: 1px solid white");
			document.getElementById('image2').setAttribute("style", "border: 1px solid white");
			document.getElementById('image3').setAttribute("style", "border: 1px solid white");
			document.getElementById('image4').setAttribute("style", "border: 1px solid white");
			document.getElementById('image5').setAttribute("style", "border: 1px solid white");
			//dat lai duong vien cua the html co id vua click
			document.getElementById(imageId).setAttribute("style", "border: 1px solid red");
		}
		$(document).ready(function() {
			var slide = new Array();
			slide[0] = "images/slide1.jpg";
			slide[1] = "images/slide2.jpg";
			slide[2] = "images/slide3.jpg";
			var key = 0;
			$(".next").click(function() {
				$("#imgSlide").fadeOut(function() {
					$("#imgSlide").attr("src",slide[key]);
					$("#imgSlide").fadeIn();
					key++;
					if(key == slide.length)
						key=0;
				});
			});
			$(".prev").click(function() {
				$("#imgSlide").fadeOut(function() {
					if(key == 0)
						key=slide.length - 1;
					$("#imgSlide").attr("src",slide[key]);
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