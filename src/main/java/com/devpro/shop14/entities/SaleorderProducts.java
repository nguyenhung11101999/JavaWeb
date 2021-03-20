
package com.devpro.shop14.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity

@Table(name = "tbl_saleorder_products")
public class SaleorderProducts extends BaseEntity {
	@Column(name = "quality", nullable = false)
	private int quality;

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "saleorder_id", nullable = false)
	private Saleorder saleOrder;

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", nullable = false)
	private Product productsForSale;

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public Saleorder getSaleOrder() {
		return saleOrder;
	}

	public void setSaleOrder(Saleorder saleOrder) {
		this.saleOrder = saleOrder;
	}

	public Product getProductsForSale() {
		return productsForSale;
	}

	public void setProductsForSale(Product productsForSale) {
		this.productsForSale = productsForSale;
	}

}
