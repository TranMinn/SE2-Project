package com.ecommerce.dao;

import com.ecommerce.model.Voucher;

public interface VoucherDao {
	void add(Voucher voucher);
	void delete(int id);

}
