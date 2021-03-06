
package com.devpro.shop14.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity

@Table(name = "tbl_saleorder_products")
public class SaleorderProducts extends BaseEntity {

	@Column(name = "product_id", nullable = false)
	private Integer product_id;

	@Column(name = "quality", nullable = false)
	private Integer quality;

	@ManyToOne(fetch = FetchType.EAGER)

	@JoinColumn(name = "saleorder_id")
	private Saleorder saleorder;

	public Saleorder getSaleorder() {
		return saleorder;
	}

	public void setSaleorder(Saleorder saleorder) {
		this.saleorder = saleorder;
	}

	public Integer getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}

	public Integer getQuality() {
		return quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}

	

}
