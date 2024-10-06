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
			String url = "jdbc:mysql://sql10.freesqldatabase.com:3306/sql10734890";
			String user = "sql10734890";
			String password = "fwPp2yhExw";

			// Establish connection
			con = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
}