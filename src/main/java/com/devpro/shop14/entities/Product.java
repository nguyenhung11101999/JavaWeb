
package com.devpro.shop14.entities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity

@Table(name = "tbl_products")
public class Product extends BaseEntity{

	@Column(name = "title", length = 1000, nullable = false)
	private String title;
	
	@Column(name = "price", precision = 13, scale = 2, nullable = true)
	private BigDecimal price;
	
	@Column(name = "price_sale", precision = 13, scale = 2, nullable = true)
	private BigDecimal price_sale;

	@Column(name = "short_description", length = 3000, nullable = false)
	private String short_description;

	@Lob
	@Column(name = "detail_description", columnDefinition = "LONGTEXT", nullable = false)
	private String detail_description;
	
	@Column(name = "avatar", length = 200, nullable = true)
	private String avatar;
	
	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "products", fetch = FetchType.LAZY)
	private List<Productimg> Productimgs = new ArrayList<Productimg>();
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Categories categories;
	
	public void addProductimg(Productimg productimg) {
		Productimgs.add(productimg);
		productimg.setProducts(this);
	}

	public void removeProductimg(Productimg productimg) {
		Productimgs.remove(productimg);
		productimg.setProducts(null);
	}

	public List<Productimg> getProductimgs() {
		return Productimgs;
	}

	public void setProductimgs(List<Productimg> productimgs) {
		Productimgs = productimgs;
	}

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getPrice_sale() {
		return price_sale;
	}

	public void setPrice_sale(BigDecimal price_sale) {
		this.price_sale = price_sale;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getTitle_product() {
		return title;
	}

	public void setTitle_product(String title_product) {
		this.title = title_product;
	}

	public String getShort_description() {
		return short_description;
	}

	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}

	public String getDetail_description() {
		return detail_description;
	}

	public void setDetail_description(String detail_description) {
		this.detail_description = detail_description;
	}
}
