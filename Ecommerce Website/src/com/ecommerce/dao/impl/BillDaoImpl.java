package com.ecommerce.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ecommerce.dao.BillDao;
import com.ecommerce.jdbc.JDBCConnection;
import com.ecommerce.model.Bill;

public class BillDaoImpl extends JDBCConnection implements BillDao {

	@Override
	public void addBill(Bill bill) {
		String sql = "INSERT INTO bill(user_id, address, payment_method, buy_date, status) VALUES (?,?,?,?,?)";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, bill.getUser_id().getId());
			ps.setString(2, bill.getAddress());
			ps.setString(3, bill.getPayment_method());
			ps.setDate(4, new Date(bill.getBuy_date().getTime()));
			ps.setInt(5, bill.getStatus());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
