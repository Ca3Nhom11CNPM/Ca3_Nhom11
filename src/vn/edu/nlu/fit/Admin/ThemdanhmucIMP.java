package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;
import vn.edu.nlu.fit.filter.TaiKhoanDao;
import vn.edu.nlu.fit.filter.TaiKhoanDaoIMP;
import vn.edu.nlu.fit.filter.User1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ThemdanhmucIMP implements Quanly{

    @Override
    public void themTaiKhoan(Danhmuc user) {
        String sql = "Insert into producttype values(?,?,?)";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ps.setString(1, user.getId());
            ps.setString(2, user.getName());
            ps.setString(3, user.getActive());
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ThemdanhmucIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public void xoaTaiKhoan(Danhmuc user1) {
//        String sql = "DELETE FROM  producttype  WHERE id = ?";
//        try {
//            Connection cons = DBConnect.getConnection();
//            PreparedStatement ps = cons.prepareStatement(sql);
//            ps.setString(1, user1.getId());
//            ps.executeUpdate();
//            cons.close();
//
//        } catch (ClassNotFoundException | SQLException ex) {
////            Logger.getLogger(ThemdanhmucIMP.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
}
