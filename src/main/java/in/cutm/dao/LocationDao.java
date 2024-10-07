package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import in.cutm.model.Location;

public class LocationDao {
    private Connection con;

    // Constructor that assigns the passed Connection object to the class field
    public LocationDao(Connection con) {
        this.con = con;  // Initialize the class-level connection with the passed connection
    }

    // Method to add a location to the database
    public boolean isAddLocation(Location locData) {
        boolean isAddedLocation = false;

        try {
            // SQL query to insert location data
            String addLocQuery = "INSERT INTO hotel_location (location) VALUES (?)";
            PreparedStatement ps = con.prepareStatement(addLocQuery);

            // Set the location value in the query
            ps.setString(1, locData.getBranchName());

            // Execute the update
            int i = ps.executeUpdate();

            // Check if the update was successful
            if (i == 1) {
                isAddedLocation = true;
            } else {
                isAddedLocation = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isAddedLocation;
    }
}