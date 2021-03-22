package com.devpro.shop14.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.dto.AjaxResponse;
import com.devpro.shop14.dto.Cart;
import com.devpro.shop14.dto.CartItem;
import com.devpro.shop14.entities.Product;
import com.devpro.shop14.entities.Saleorder;
import com.devpro.shop14.entities.SaleorderProducts;
import com.devpro.shop14.repository.ProductRepository;
import com.devpro.shop14.repository.SaleOrdeRepository;

@Controller
public class CartController {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private SaleOrdeRepository saleOrdeRepository;

	@RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	public String adminindex(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		/* model.addAttribute("productRepo", productRepo.findAll()); */
		return "front-end/cart";
	}

	@RequestMapping(value = { "/cart/paymnen" }, method = RequestMethod.POST)
	public String addProduct_Post(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String fullName = request.getParameter("fullName");
		String address = request.getParameter("address");

		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("cart");

		List<CartItem> cartItems = cart.getCartItems();

		Saleorder saleOrder = new Saleorder();
		saleOrder.setCode("ORDER-" + System.currentTimeMillis());
		saleOrder.setSeo("ORDER-" + System.currentTimeMillis());
		saleOrder.setCustomer_name(fullName);
		saleOrder.setCustomer_address(address);
		saleOrder.setCustomer_email(email);
		saleOrder.setCustomer_phone(tel);

		for (CartItem item : cartItems) {
			SaleorderProducts saleOrderProducts = new SaleorderProducts();
			saleOrderProducts.setProductsForSale(productRepository.getOne(item.getProductId()));
			saleOrderProducts.setQuality(item.getQuantity());
			saleOrder.addProduct(saleOrderProducts);
		}

		saleOrdeRepository.save(saleOrder);
		return "redirect:/cart";

	}

//	private void resetCart(HttpServletRequest request) {
//		HttpSession httpSession = request.getSession();
//		httpSession.setAttribute("cart", new CartItem());
//	}

	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuantity();
		}

		return total;
	}

	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		HttpSession httpSession = request.getSession();

		Cart cart = null;
		if (httpSession.getAttribute("cart") != null) {
			cart = (Cart) httpSession.getAttribute("cart");
		} else {
			cart = new Cart();
			httpSession.setAttribute("cart", cart);
		}

		List<CartItem> listCartItems = cart.getCartItems();
		boolean isExists = false;
		for (CartItem item : listCartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				item.setQuantity(item.getQuantity() + cartItem.getQuantity());
			}
		}

		if (!isExists) {
			Product productInDb = productRepository.getOne(cartItem.getProductId());
			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice());
			cart.getCartItems().add(cartItem);
		}

		httpSession.setAttribute("totalItem", getTotalItems(request));
		return ResponseEntity.ok(new AjaxResponse(200, getTotalItems(request)));
	}
}
