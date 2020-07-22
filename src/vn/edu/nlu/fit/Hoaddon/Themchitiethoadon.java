package vn.edu.nlu.fit.Hoaddon;

import vn.edu.nlu.fit.DB.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Themchitiethoadon implements Chitiethoadonin{
    @Override
    public void themCTHD(Chitiethoadon cthd) {
        String sql = "INSERT INTO `chitiethoadon` VALUE (?,?,?,?,?)";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ps.setInt(1, cthd.getId());
            ps.setString(2, cthd.getHoadon().getMahoadon());
            ps.setString(3, cthd.getProduct().getMasp());
            ps.setInt(4, cthd.getSoLuong());
            ps.setDouble(5, cthd.getDonGia());

            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Themchitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
