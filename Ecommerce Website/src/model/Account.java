package model;

import java.util.Date;

public class Account {
	private int accId;
	private String name;
	private String username;
	private int role;
	private String password;
	private String address;
	private String phone;
	
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(int accId, String name, String username, int role, String password, String address, String phone) {
		super();
		this.accId = accId;
		this.name = name;
		this.username = username;
		this.role = role;
		this.password = password;
		this.address = address;
		this.phone = phone;
	}

	public int getAccId() {
		return accId;
	}

	public void setAccId(int accId) {
		this.accId = accId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	

}
