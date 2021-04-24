package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Voucher;

public interface VoucherService {
	void insert(Voucher voucher);

	void edit(Voucher voucher);

	void delete(int id);

	Voucher get(int id);
	
	Voucher get(String code);

	List<Voucher> getAll();

	List<Voucher> search(String code);
}
