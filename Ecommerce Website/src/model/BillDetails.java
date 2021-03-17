package model;

public class BillDetails {
	private int detailId;
	private int billId;
	private int productId;
	private int quantity;
	private double price;
	private int discount;
	
	public BillDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BillDetails(int detailId, int billId, int productId, int quantity, double price, int discount) {
		super();
		this.detailId = detailId;
		this.billId = billId;
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
		this.discount = discount;
	}

	public int getDetailId() {
		return detailId;
	}

	public void setDetailId(int detailId) {
		this.detailId = detailId;
	}

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
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

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	

}
