package vn.edu.nlu.fit.QuanLySanPham;

import vn.edu.nlu.fit.DB.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ThemsanphamIMP implements Quanlysanpham {
    @Override
    public void themTaiKhoan(Sanpham user) {
        String sql = "Insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ps.setString(1, user.getId() );
            ps.setString(2, user.getName());
            ps.setString(3, user.getType());
            ps.setString(4, user.getPrice());
            ps.setString(5, user.getQuatity());
            ps.setString(6, user.getImg());
            ps.setString(7, user.getDes());
            ps.setString(8, user.getCongty());
            ps.setString(9, user.getTacgia());
            ps.setString(10, user.getNgayxuatban());
            ps.setString(11, user.getKichthuoc());
            ps.setString(12, user.getNxb());
            ps.setString(13, user.getLoaibia());
            ps.setString(14, user.getSotrang());
            ps.setString(15, user.getMasp());
            ps.setString(16, user.getLower());
            ps.setString(17, user.getActive());
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ThemsanphamIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void UpdateTaiKhoan(Sanpham user) {
        String sql = "UPDATE product SET name=? , type = ? , price = ? , quatity =?, img = ?, des = ?, congty = ? , tacgia =? , ngayxuatban=?, kichthuoc=?, nxb = ? , loaibia = ? , sotrang =? , masp=? , lower=?, active=? where id=?";
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getType());
            ps.setString(3, user.getPrice());
            ps.setString(4, user.getQuatity());
            ps.setString(5, user.getImg());
            ps.setString(6, user.getDes());
            ps.setString(7, user.getCongty());
            ps.setString(8, user.getTacgia());
            ps.setString(9, user.getNgayxuatban());
            ps.setString(10, user.getKichthuoc());
            ps.setString(11, user.getNxb());
            ps.setString(12, user.getLoaibia());
            ps.setString(13, user.getSotrang());
            ps.setString(14, user.getMasp());
            ps.setString(15, user.getLower());
            ps.setString(16, user.getActive());
            ps.setString(17, user.getId() );
            ps.executeUpdate();
            cons.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ThemsanphamIMP.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
