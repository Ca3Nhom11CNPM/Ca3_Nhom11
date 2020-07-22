package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class NhaXuatBanIMP implements QuanlyNXB {
    @Override
    public void themTaiKhoan(NhaXuatBan user) {
        String sql = "Insert into listnhaxuatban values(?,?,?)";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ps.setString(1, user.getId());
            ps.setString(2, user.getName());
            ps.setString(3, user.getActive());
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(NhaXuatBanIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public void UpdateTaiKhoan(NhaXuatBan user) {
        String sql = "UPDATE listnhaxuatban SET name=? , active =? where id=?";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getActive());
            ps.setString(3, user.getId());
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(NhaXuatBanIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
