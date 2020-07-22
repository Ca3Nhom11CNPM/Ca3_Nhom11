package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UpdatenguoidungIMP implements Quanlynguoidung{
    public void UpdateTaiKhoan(Nguoidung user) {
        String sql = "UPDATE taikhoan SET  name=? , email=? , password=? , fullname=? , quyen=?  where maTK=?";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getFullname());
            ps.setString(5, user.getQuyen());
            ps.setString(6, user.getMaTK());
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(UpdatenguoidungIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
