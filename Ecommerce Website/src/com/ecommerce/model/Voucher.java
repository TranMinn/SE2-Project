package com.ecommerce.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Voucher implements Serializable {
	private int id;
	private String code;
	private int discount;
	
	public Voucher() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Voucher(int id, String code, int discount) {
		super();
		this.id = id;
		this.code = code;
		this.discount = discount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	
	

}
