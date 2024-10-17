package in.cutm.dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	private static Connection con = null;

	public static Connection dbconnect() {

		try {
			// Load MySQL JDBC Driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Correct JDBC URL format for MySQL
			String url = "jdbc:mysql://gateway01.ap-southeast-1.prod.aws.tidbcloud.com:4000/hotel_management_system";
			String user = "23wkAnXFRjvR8mG.root";
			String password = "c12g0FHjDC3OY20W";

			// Establish connection
			con = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
}