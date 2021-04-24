package com.ecommerce.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ecommerce.dao.VoucherDao;
import com.ecommerce.jdbc.JDBCConnection;
import com.ecommerce.model.Voucher;

public class VoucherDaoImpl extends JDBCConnection implements VoucherDao {

	@Override
	public void insert(Voucher voucher) {
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

	@Override
	public List<Voucher> getAll() {
		List<Voucher> voucherList = new ArrayList<Voucher>();
		String sql = "SELECT * from Voucher";

		Connection con = super.getConnection();

		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Voucher voucher = new Voucher();
				voucher.setId(rs.getInt("id"));
				voucher.setCode(rs.getString("code"));
				voucher.setDiscount(rs.getInt("discount"));

				voucherList.add(voucher);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return voucherList;
	}

	@Override
	public Voucher get(int id) {
		String sql = "SELECT * FROM Voucher where id = ?";

		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Voucher voucher = new Voucher();
				voucher.setId(rs.getInt("id"));
				voucher.setCode(rs.getString("code"));
				voucher.setDiscount(rs.getInt("discount"));

				return voucher;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Voucher get(String code) {

		String sql = "SELECT * from Voucher where code = ?";

		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, code);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Voucher voucher = new Voucher();
				voucher.setId(rs.getInt("id"));
				voucher.setCode(rs.getString("code"));
				voucher.setDiscount(rs.getInt("discount"));

				return voucher;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public void edit(Voucher voucher) {
		String sql = "UPDATE voucher SET code = ?, discount = ? WHERE id = ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, voucher.getCode());
			ps.setInt(2, voucher.getDiscount());
			ps.setInt(3, voucher.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Voucher> search(String code) {
		List<Voucher> vouchers = new ArrayList<Voucher>();
		String sql = "SELECT * FROM voucher WHERE code LIKE ? ";
		Connection conn = super.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + code + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Voucher voucher = new Voucher();

				voucher.setId(rs.getInt("id"));
				voucher.setCode(rs.getString("code"));
				voucher.setDiscount(rs.getInt("discount"));

				vouchers.add(voucher);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return vouchers;
	}

}
