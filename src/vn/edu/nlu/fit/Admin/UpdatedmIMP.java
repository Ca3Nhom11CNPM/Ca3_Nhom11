package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UpdatedmIMP implements Updatedanhm {
    public void UpdateTaiKhoan(Danhmuc user) {
        String sql = "UPDATE producttype SET name=? , active =? where id=?";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getActive());
            ps.setString(3, user.getId());
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ThemdanhmucIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
