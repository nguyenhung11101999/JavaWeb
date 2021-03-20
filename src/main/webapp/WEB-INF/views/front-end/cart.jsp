<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
</head>
<body>

	<section class="jumbotron text-center">
		<div class="container">
			<h1 class="jumbotron-heading">E-COMMERCE CART</h1>
		</div>
	</section>

	<div class="container mb-4">
		<form action="${base}/cart/paymnen" method="post">
			<div class="row">
				<div class="col">
					<input type="text" class="form-control" placeholder="Email"
						name="email">
				</div>
				<div class="col">
					<input type="text" class="form-control" placeholder="Telephone"
						name="tel">
				</div>
				<div class="col">
					<input type="text" class="form-control" placeholder="Full name"
						name="fullName">
				</div>
				<div class="col">
					<input type="text" class="form-control" placeholder="Address"
						name="address">
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">Product</th>
									<th scope="col">Available</th>
									<th scope="col" class="text-center">Quantity</th>
									<th scope="col" class="text-right">Price</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${cart.cartItems}" var="item">
									<tr>
										<td><img src="https://dummyimage.com/50x50/55595c/fff" />
										</td>
										<td>${item.productName}</td>
										<td>In stock</td>
										<td><input class="form-control" type="text" value="1" />${item.quantity}</td>
										<td class="text-right">${item.priceUnit}</td>
										<td class="text-right"><button
												class="btn btn-sm btn-danger">
												<i class="fa fa-trash"></i>
											</button></td>
									</tr>
								</c:forEach>

								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>Sub-Total</td>
									<td class="text-right">255,90 €</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>Shipping</td>
									<td class="text-right">6,90 €</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><strong>Total</strong></td>
									<td class="text-right"><strong>346,90 €</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col mb-2">
					<div class="row">
						<div class="col-sm-12  col-md-6">
							<button class="btn btn-block btn-light">Continue
								Shopping</button>
						</div>
						<div class="col-sm-12 col-md-3 text-right">
							<button class="btn btn-lg btn-block btn-success text-uppercase"
								type="submit">Checkout</button>
						</div>
						<div class="col-sm-12 col-md-3 text-right">
							<a href="${base}/home"><button
									class="btn btn-lg btn-block btn-warning text-uppercase">Back</button></a>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>