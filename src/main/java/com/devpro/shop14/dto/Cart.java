package com.devpro.shop14.dto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<CartItem> cartItems = new ArrayList<CartItem>();
	private BigDecimal totalPrice = BigDecimal.ZERO;
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}