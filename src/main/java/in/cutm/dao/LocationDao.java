package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import in.cutm.model.Location;

public class LocationDao {
	private Connection con;

	// Constructor that assigns the passed Connection object to the class field
	public LocationDao(Connection con) {
		this.con = con; // Initialize the class-level connection with the passed connection
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

	public List<Location> displayLocation() {
		List<Location> lst = new ArrayList<Location>();

		Location l1 = null;

		try {
			String displayLocationQuery = "SELECT * FROM hotel_location";
			PreparedStatement ps = con.prepareStatement(displayLocationQuery);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				l1 = new Location();
				l1.setBranchName(rs.getString(2));
				lst.add(l1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return lst;
	}
}