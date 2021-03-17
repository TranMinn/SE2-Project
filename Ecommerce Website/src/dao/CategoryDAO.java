package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.ConnectDB;
import model.Category;

public class CategoryDAO {

	Connection connection = ConnectDB.getConnection();

	public CategoryDAO() {

	}

	public List<Category> selectAllCategories() {
		List<Category> categories = new ArrayList<>();

		try {
			String SELECT_ALL_CATEGORIES = "SELECT * FROM category";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORIES);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int cateId = rs.getInt("cateId");
				String cateName = rs.getString("cateName");
				categories.add(new Category(cateId, cateName));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return categories;
	}

	public Category selectCategory(int cateId) {
		Category category = null;
		try {
			String SELECT_CATEGORY_BY_ID = "SELECT * FROM category WHERE cateId = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CATEGORY_BY_ID);
			preparedStatement.setInt(1, cateId);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String cateName = rs.getString("cateName");
				category = new Category(cateId, cateName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return category;
	}
	
	public void insertCategory(Category category) throws SQLException {
		try {
			String INSERT_CATEGORY = "INSERT INTO category (cateName) VALUES (?)";
			PreparedStatement ps = connection.prepareStatement(INSERT_CATEGORY);
			ps.setString(1, category.getCateName());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public boolean updateCategory(Category category) throws SQLException {
		boolean rowUpdated = false;
		try {
			String UPDATE_CATEGORY = "UPDATE category SET cateName = ? WHERE cateId = ?";
			PreparedStatement statement = connection.prepareStatement(UPDATE_CATEGORY);
			statement.setString(1, category.getCateName());
			statement.setInt(2, category.getCateId());
			rowUpdated = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowUpdated;
	}
	
	public boolean deleteCategory(int cateId) throws SQLException {
		boolean rowDeleted = false;
		try {
			String DELETE_CATEGORY = "DELETE FROM category WHERE cateId = ?";
			PreparedStatement statement = connection.prepareStatement(DELETE_CATEGORY);
			statement.setInt(1, cateId);
			rowDeleted = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowDeleted;
	}
	
	
	

}
