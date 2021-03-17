package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.ConnectDB;
import model.Product;

public class ProductDAO {

	Connection connection = ConnectDB.getConnection();
	
	public ProductDAO() {
		
	}
	
	public List<Product> selectAllProducts() {
		List<Product> products = new ArrayList<>();

		try {
			String SELECT_ALL_PRODUCTS = "SELECT * FROM product";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCTS);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int productId = rs.getInt("productId");
				int cateId = rs.getInt("cateId");
				String productName = rs.getString("productName");
				String image = rs.getString("image");
				int quantity = rs.getInt("quantity");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				int discount = rs.getInt("discount");

				products.add(new Product(productId, cateId, productName, image, quantity, description, price, discount));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}
	
	public Product selectProduct(int productId) {
		Product product = null;
		try {
			String SELECT_PRODUCT_BY_ID = "SELECT * FROM product WHERE productId = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
			preparedStatement.setInt(1, productId);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int cateId = rs.getInt("cateId");
				String productName = rs.getString("productName");
				String image = rs.getString("image");
				int quantity = rs.getInt("quantity");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				int discount = rs.getInt("discount");
				
				product = new Product(productId, cateId, productName, image, quantity, description, price, discount);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}
	
	public void insertProduct(Product product) throws SQLException {
		try {
			String INSERT_PRODUCT = "INSERT INTO product (cateId, productName, image, quantity, description, price, discount) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(INSERT_PRODUCT);
			ps.setInt(1, product.getCateId());
			ps.setString(2, product.getProductName());
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getQuantity());
			ps.setString(5, product.getDescription());
			ps.setDouble(6, product.getPrice());
			ps.setInt(7, product.getDiscount());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public boolean updateProduct(Product product) throws SQLException {
		boolean rowUpdated = false;
		try {
			String UPDATE_PRODUCT = "UPDATE product SET cateId = ?, productName = ?, image = ?, quantity = ?, description = ?, price = ?, discount = ? WHERE productId = ?";
			PreparedStatement statement = connection.prepareStatement(UPDATE_PRODUCT);
			statement.setInt(1, product.getCateId());
			statement.setString(2, product.getProductName());
			statement.setString(3, product.getImage());
			statement.setInt(4, product.getQuantity());
			statement.setString(5, product.getDescription());
			statement.setDouble(6, product.getPrice());
			statement.setInt(7, product.getDiscount());
			statement.setInt(8, product.getProductId());
			
			rowUpdated = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowUpdated;
	}
	
	public boolean deleteProduct(int productId) throws SQLException {
		boolean rowDeleted = false;
		try {
			String DELETE_PRODUCT = "DELETE FROM product WHERE productId = ?";
			PreparedStatement statement = connection.prepareStatement(DELETE_PRODUCT);
			statement.setInt(1, productId);
			rowDeleted = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowDeleted;
	}
	
	
}
