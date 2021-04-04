package com.ecommerce.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class BillDetails implements Serializable {
	private int id;
	private Bill bill_id;
	private Product product_id;
	private int quantity;
	private double price;
	private Voucher discount;
	
	public BillDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BillDetails(int id, Bill bill_id, Product product_id, int quantity, double price, Voucher discount) {
		super();
		this.id = id;
		this.bill_id = bill_id;
		this.product_id = product_id;
		this.quantity = quantity;
		this.price = price;
		this.discount = discount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Bill getBill_id() {
		return bill_id;
	}

	public void setBill_id(Bill bill_id) {
		this.bill_id = bill_id;
	}

	public Product getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Product product_id) {
		this.product_id = product_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Voucher getDiscount() {
		return discount;
	}

	public void setDiscount(Voucher discount) {
		this.discount = discount;
	}
		

}
