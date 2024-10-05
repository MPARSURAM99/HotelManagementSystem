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
            String url = "jdbc:mysql://hotel-management-system-db.cp02wy2i8ypi.ap-southeast-2.rds.amazonaws.com:3306/hotel_management_system_db";
            String user = "admin";
            String password = "123Parsuram";
            
            // Establish connection
            con = DriverManager.getConnection(url, user, password);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return con;
    }
}