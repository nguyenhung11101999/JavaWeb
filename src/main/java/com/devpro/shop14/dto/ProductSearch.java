package com.devpro.shop14.dto;

public class ProductSearch {
	private String seo;
	private String categorySeo;
	private String searchText;

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getCategorySeo() {
		return categorySeo;
	}

	public void setCategorySeo(String categorySeo) {
		this.categorySeo = categorySeo;
	}
}
