
package com.devpro.shop14.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity

@Table(name = "tbl_category")
public class Categories extends BaseEntity{

	@Column(name = "name", length = 100, nullable = false)
	private String name;

	@Column(name = "description", length = 100, nullable = false)
	private String description;

	@Column(name = "seo", length = 100, nullable = true)
	private String seo;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "categories", fetch = FetchType.LAZY)
	private List<Product> products = new ArrayList<Product>();

	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name = "parent_id")
	private List<Categories> child_categories = new ArrayList<Categories>();

	public void addProduct(Product product) {
		products.add(product);
		product.setCategories(this);
	}

	public void removeProduct(Product product) {
		products.remove(product);
		product.setCategories(null);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public List<Categories> getChild_categories() {
		return child_categories;
	}

	public void setChild_categories(List<Categories> child_categories) {
		this.child_categories = child_categories;
	}

}
