package vn.edu.nlu.fit.filter;
import vn.edu.nlu.fit.DB.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class TaiKhoanDaoIMP implements TaiKhoanDao {


    @Override
    public boolean kiemTraTaiKhoan(String email) {
        String sql = "SELECT * FROM `taikhoan` WHERE tenDangNhap= '" + email + "'";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDaoIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public void themTaiKhoan(User1 user) {
        String sql = "INSERT INTO `taikhoan` VALUE (?,?,?,?,?,?,?)";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ps.setInt(1, 0);
            ps.setString(2, user.getName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getFullname());
            ps.setInt(6, user.getQuyen());
            ps.setInt(7, user.getStatus());
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDaoIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean checkDangNhap(String email, String password) {
        String sql = "SELECT * FROM `taikhoan` WHERE tenDangNhap= '" + email + "' and matKhau= '" + password + "' and quyentruycap =2 and status=1";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDaoIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    @Override
    public boolean checkDangNhapAd(String email, String password) {
        String sql = "SELECT * FROM `taikhoan` WHERE tenDangNhap= '" + email + "' and matKhau= '" + password + "'";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDaoIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }


    public User1 getTaiKhoan(String uname) {
        String sql = "SELECT * FROM `taikhoan` WHERE name= '" + uname + "'";
        User1 user= new User1();
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user.setMaTK(rs.getInt("maTK"));
                user.setName(rs.getString("uname"));
                user.setEmail(rs.getString("email"));
                user.setFullname(rs.getString("fullname"));
                user.setPassword(rs.getString("password"));
                user.setQuyen(Integer.parseInt(rs.getString("quyen")));
                user.setStatus(Integer.parseInt(rs.getString("status")));
            }
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDaoIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
    @Override
    public User1 getTaiKhoanByUserName(String userName) {
        String sql = "SELECT * FROM `taikhoan` WHERE name= '" + userName + "'";
        User1 user= new User1();
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user.setMaTK(rs.getInt("maTK"));
                user.setName(rs.getString("uname"));
                user.setEmail(rs.getString("email"));
                user.setFullname(rs.getString("fullname"));
                user.setPassword(rs.getString("password"));
                user.setQuyen(Integer.parseInt(rs.getString("status")));
                user.setStatus(Integer.parseInt(rs.getString("status")));
            }
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDaoIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
}
