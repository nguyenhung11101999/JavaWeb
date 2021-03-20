package com.devpro.shop14.dto;

public class AjaxResponse {
	private int statusCode;
	private Object obj;
	private String data;
	private int total;

	public AjaxResponse(int statusCode, int total) {
		super();
		this.statusCode = statusCode;
		this.total = total;
	}

	public AjaxResponse(int statusCode, Object obj) {
		super();
		this.statusCode = statusCode;
		this.obj = obj;
	}

	public AjaxResponse(int statusCode, String data) {
		super();
		this.statusCode = statusCode;
		this.data = data;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public int getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
}
