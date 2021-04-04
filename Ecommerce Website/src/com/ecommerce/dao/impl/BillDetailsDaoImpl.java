package com.ecommerce.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ecommerce.dao.BillDetailsDao;
import com.ecommerce.jdbc.JDBCConnection;
import com.ecommerce.model.BillDetails;

public class BillDetailsDaoImpl extends JDBCConnection implements BillDetailsDao {

	@Override
	public void add(BillDetails billDetails) {
		String sql = "INSERT INTO billDetails(bill_id, product_id, quantity, price, discount) VALUES (?,?,?,?,?)";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, billDetails.getBill_id().getId());
			ps.setInt(2, billDetails.getProduct_id().getId());
			ps.setInt(3, billDetails.getQuantity());
			ps.setDouble(4, billDetails.getPrice());
			ps.setInt(5, billDetails.getDiscount().getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
