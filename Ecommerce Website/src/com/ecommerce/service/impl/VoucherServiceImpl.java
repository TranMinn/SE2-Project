package com.ecommerce.service.impl;

import java.util.List;

import com.ecommerce.dao.VoucherDao;
import com.ecommerce.dao.impl.VoucherDaoImpl;
import com.ecommerce.model.Voucher;
import com.ecommerce.service.VoucherService;

public class VoucherServiceImpl implements VoucherService {
	
	VoucherDao voucherDao = new VoucherDaoImpl();

	@Override
	public void insert(Voucher voucher) {
		voucherDao.insert(voucher);
		
	}

	@Override
	public void edit(Voucher newVoucher) {
		Voucher oldVoucher = voucherDao.get(newVoucher.getId());
		oldVoucher.setCode(newVoucher.getCode());
		oldVoucher.setDiscount(newVoucher.getDiscount());
		
		voucherDao.edit(oldVoucher);
		
	}

	@Override
	public void delete(int id) {
		voucherDao.delete(id);
		
	}

	@Override
	public Voucher get(int id) {
		return voucherDao.get(id);
	}

	@Override
	public Voucher get(String code) {
		return voucherDao.get(code);
	}

	@Override
	public List<Voucher> getAll() {
		return voucherDao.getAll();
	}

	@Override
	public List<Voucher> search(String code) {
		return voucherDao.search(code);
	}

}
