package in.cutm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import in.cutm.model.ReceptionCredential;

public class ReceptionCredentialDao {
    private Connection con;

    public ReceptionCredentialDao(Connection con) {
        super();
        this.con = con;
    }

    public boolean isLoginSuccessful(ReceptionCredential credentialDetails) {
        boolean isCredentialMatch = false;

        try {
            String credentialMatchingQuery = "SELECT * FROM hotel_location WHERE location=? AND password=?";
            PreparedStatement ps = con.prepareStatement(credentialMatchingQuery);
            ps.setString(1, credentialDetails.getReceptionLocation());
            ps.setString(2, credentialDetails.getReceptionPassword());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                isCredentialMatch = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isCredentialMatch;
    }
}
