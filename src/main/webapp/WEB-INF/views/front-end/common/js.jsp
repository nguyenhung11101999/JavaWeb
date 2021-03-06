<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
		function Subscribe() {
			// javascript object.
			var data = {};
			data["subname"] = $("#subname").val();
			data["subemail"] = $("#subemail").val();
			$.ajax({
				url : "/subscribe",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json",
				success : function(jsonResult) {
					if (jsonResult.statusCode == 200) {
						alert(jsonResult.data);
					} else {
						alert(jsonResult.data);
					}
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
		}
		function SaveContact() {
			// javascript object.
			var data = {};
			data["name"] = $("#name").val();
			$.ajax({
				url : "/contact3",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json",
				success : function(jsonResult) {
					if (jsonResult.statusCode == 200) {
						alert(jsonResult.data);
					} else {
						alert(jsonResult.data);
					}
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
		}
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