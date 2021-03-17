package model;

import com.sun.jmx.snmp.Timestamp;

public class Bill {
	private int billBid;
	private int accId;
	private String address;
	private String payMethod;
	private Timestamp deliveryDate;
	private Timestamp buyDate;
	
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Bill(int billBid, int accId, String address, String payMethod, Timestamp deliveryDate, Timestamp buyDate) {
		super();
		this.billBid = billBid;
		this.accId = accId;
		this.address = address;
		this.payMethod = payMethod;
		this.deliveryDate = deliveryDate;
		this.buyDate = buyDate;
	}

	public int getBillBid() {
		return billBid;
	}

	public void setBillBid(int billBid) {
		this.billBid = billBid;
	}

	public int getAccId() {
		return accId;
	}

	public void setAccId(int accId) {
		this.accId = accId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public Timestamp getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Timestamp deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public Timestamp getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Timestamp buyDate) {
		this.buyDate = buyDate;
	}
	
	
	

}
