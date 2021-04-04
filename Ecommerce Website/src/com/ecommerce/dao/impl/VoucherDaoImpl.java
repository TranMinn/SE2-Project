package com.ecommerce.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ecommerce.dao.VoucherDao;
import com.ecommerce.jdbc.JDBCConnection;
import com.ecommerce.model.Voucher;

public class VoucherDaoImpl extends JDBCConnection implements VoucherDao {

	@Override
	public void add(Voucher voucher) {
		String sql = "INSERT INTO voucher(code, discount) VALUES (?,?)";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, voucher.getCode());
			ps.setDouble(2, voucher.getDiscount());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM voucher WHERE id=?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
