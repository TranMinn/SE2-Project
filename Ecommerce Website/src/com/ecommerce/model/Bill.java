package com.ecommerce.model;

import java.io.Serializable;
import java.util.Date;



@SuppressWarnings("serial")
public class Bill implements Serializable {
	private int id;
	private User user_id;
	private String address;
	private String payment_method;
	private Date buy_date;
	private int status;
	
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Bill(int id, User user_id, String address, String payment_method, Date buy_date, int status) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.address = address;
		this.payment_method = payment_method;
		this.buy_date = buy_date;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPayment_method() {
		return payment_method;
	}

	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}

	public Date getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(Date buy_date) {
		this.buy_date = buy_date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
	

}
