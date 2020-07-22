package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;
import vn.edu.nlu.fit.Hoaddon.Hoadon;
import vn.edu.nlu.fit.Hoaddon.Themhoadon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Themhoadon11 implements    themhoadon1{
    public void themtinhtrang(Hoadon1 hd) {
        String sql = "UPDATE `hoadon` set tinhtrangdon = ? where id = ?";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);

            ps.setString(1, hd.getTinhtrangdon());
            ps.setString(2, hd.getId());


            ps.executeUpdate();
            cons.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Themhoadon.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
