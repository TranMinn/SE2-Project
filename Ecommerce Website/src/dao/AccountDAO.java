package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.ConnectDB;
import model.Account;

public class AccountDAO {

	Connection connection = ConnectDB.getConnection();

	public AccountDAO() {

	}

	public List<Account> selectAllAccounts() {
		List<Account> accounts = new ArrayList<>();

		try {
			String SELECT_ALL_ACCOUNTS = "SELECT * FROM account";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ACCOUNTS);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int accId = rs.getInt("accId");
				String name = rs.getString("name");
				String username = rs.getString("username");
				int role = rs.getInt("role");
				String password = rs.getString("password");
				String address = rs.getString("address");
				String phone = rs.getString("phone");

				accounts.add(new Account(accId, name, username, role, password, address, phone));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return accounts;
	}
	
	public Account selectAccount(int accId) {
		Account account = null;
		try {
			String SELECT_ACCOUNT_BY_ID = "SELECT * FROM account WHERE accId = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ACCOUNT_BY_ID);
			preparedStatement.setInt(1, accId);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				String username = rs.getString("username");
				int role = rs.getInt("role");
				String password = rs.getString("password");
				String address = rs.getString("address");
				String phone = rs.getString("phone");
				
				account = new Account(accId, name, username, role, password, address, phone);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return account;
	}
	
	public void insertAccount(Account account) throws SQLException {
		try {
			String INSERT_ACCOUNT = "INSERT INTO account (name, username, role, password, address, phone) VALUES (?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(INSERT_ACCOUNT);
			ps.setString(1, account.getName());
			ps.setString(2, account.getUsername());
			ps.setInt(3, account.getRole());
			ps.setString(4, account.getPassword());
			ps.setString(5, account.getAddress());
			ps.setString(6, account.getPhone());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public boolean updateAccount(Account account) throws SQLException {
		boolean rowUpdated = false;
		try {
			String UPDATE_ACCOUNT = "UPDATE account SET name = ?, username = ?, role = ?, password = ?, address = ?, phone = ? WHERE accId = ?";
			PreparedStatement statement = connection.prepareStatement(UPDATE_ACCOUNT);
			statement.setString(1, account.getName());
			statement.setString(2, account.getUsername());
			statement.setInt(3, account.getRole());
			statement.setString(4, account.getPassword());
			statement.setString(5, account.getAddress());
			statement.setString(6, account.getPhone());
			statement.setInt(7, account.getAccId());
			
			rowUpdated = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowUpdated;
	}
	
	public boolean deleteAccount(int accId) throws SQLException {
		boolean rowDeleted = false;
		try {
			String DELETE_ACCOUNT = "DELETE FROM account WHERE accId = ?";
			PreparedStatement statement = connection.prepareStatement(DELETE_ACCOUNT);
			statement.setInt(1, accId);
			rowDeleted = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowDeleted;
	}
	
	

}
