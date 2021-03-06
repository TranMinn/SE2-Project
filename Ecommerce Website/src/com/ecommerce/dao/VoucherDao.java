package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Voucher;

public interface VoucherDao {
	void insert(Voucher voucher);
	
	void edit(Voucher voucher);
	
	void delete(int id);
	
	List<Voucher> getAll();
	
	List<Voucher> search(String code);
	
	Voucher get(int id);
	
	Voucher get(String code);
	
}
