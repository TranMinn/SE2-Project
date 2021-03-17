package model;

public class Product {
	private int productId;
	private int cateId;
	private String productName;
	private String image;
	private int quantity;
	private String description;
	private double price;
	private int discount;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int productId, int cateId, String productName, String image, int quantity, String description,
			double price, int discount) {
		super();
		this.productId = productId;
		this.cateId = cateId;
		this.productName = productName;
		this.image = image;
		this.quantity = quantity;
		this.description = description;
		this.price = price;
		this.discount = discount;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getCateId() {
		return cateId;
	}

	public void setCateId(int cateId) {
		this.cateId = cateId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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
