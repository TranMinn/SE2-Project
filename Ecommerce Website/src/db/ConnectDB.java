package db;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	private static String DB_URL = "jdbc:mysql://localhost:3306/fashionShop?useSSL=false";
    private static String DB_USERNAME = "root";
    private static String DB_PASSWORD = "";
	
	public static Connection getConnection()  {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return conn;
	}
	
	public static void main(String[] args) {
		System.out.println(getConnection());
	}

}
