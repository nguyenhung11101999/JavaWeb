var Cart = {
	saveCartItem: function(productId,quantity) {
		var data = {
		"productId": productId,
		"quantity": $("#sl"+productId).val()
		};
		
		
		$.ajax({
			url: "/cart/add",
			type: "post",
			contentType: "application/json",
			data: JSON.stringify(data),

			dataType: "json",
			success: function(jsonResult) {
				alert("Thêm thành công!");
				$("#totalItemsInCart").html(jsonResult.data);
			},
			error: function(jqXhr, textStatus, errorMessage) { // error callback 

			}
		});
	}
}