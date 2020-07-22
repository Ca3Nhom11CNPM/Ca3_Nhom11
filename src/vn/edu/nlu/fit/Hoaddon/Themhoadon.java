package vn.edu.nlu.fit.Hoaddon;
import vn.edu.nlu.fit.DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Themhoadon implements Hoadonin {
    @Override
    public void themHoaDon(Hoadon hd) {
        String sql = "INSERT INTO `hoadon` VALUE (?,?,?,?,?,?,?,?)";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ps.setInt(1,0);
            ps.setString(2, hd.getMahoadon());
            ps.setString(3, hd.getUser1());
            ps.setString(4, hd.getSodienthoai());
            ps.setString(5, hd.getDiachi());
            ps.setString(6, hd.getHinhthuc());
            ps.setTimestamp(7, hd.getNgaymua());
            ps.setString(8, hd.getTinhtrangdon());
            ps.executeUpdate();
            cons.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Themhoadon.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void themtinhtrang(Hoadon hd) {
        String sql = "UPDATE `hoadon` set tinhtrangdon = ? where id = ?)";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);

            ps.setString(1, hd.getTinhtrangdon());
            ps.setInt(2, hd.getId());


            ps.executeUpdate();
            cons.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Themhoadon.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
