package vn.edu.nlu.fit.Search;



import vn.edu.nlu.fit.DB.DBConnect;
import vn.edu.nlu.fit.Model.Product;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SanPhamDaoIMP  {

    public ArrayList<Product> searchByName(HttpServletRequest request, String name) {
        String sql = "SELECT * FROM `product` WHERE name LIKE '" + name + "%' OR name LIKE '%" + name + "%' ";
        ArrayList<Product> arr = new ArrayList<>();
        try {
            Connection cons = DBConnect.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (!rs.isBeforeFirst()) {
                request.setAttribute("ketqua", "Không có kết quả");
            } else {
                while (rs.next()) {
                    Product sp = new Product();
//                    sp.setMaSach(rs.getString("maSach"));
//                    sp.setTenSach(rs.getString("tenSach"));
//                    sp.setTacGia(rs.getString("tacGia"));
//                    NhaXuatBan nhaXuatBan = new NhaXuatBan(rs.getString("maNhaXuatBan"), "tenNhaXuatBan");
//                    sp.setNhaXuatBan(nhaXuatBan);
//                    sp.setMoTa(rs.getString("moTa"));
//                    sp.setChiTietMoTa(rs.getString("chiTietMoTa"));
//                    sp.setHinhAnh1(rs.getString("hinh1"));
//                    sp.setHinhAnh2(rs.getString("hinh2"));
//                    sp.setGiaGoc(rs.getDouble("giaGoc"));
//                    sp.setGiaKhuyenMai(rs.getDouble("giaKhuyenMai"));
//                    sp.setSoLuongNhap(rs.getInt("soLuongNhap"));
//                    sp.setSoLuongBan(rs.getInt("soLuongBan"));
//                    DanhMuc dm = new DanhMuc(rs.getString("maDanhMuc"), "TenDanhMuc");
//                    sp.setDanhMuc(dm);
//                    sp.setDanhGia(rs.getInt("danhGia"));
//                    sp.setStatus(rs.getInt("status"));
                    arr.add(sp);

                }
            }
            cons.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return arr;
    }
}

    //    @Override

