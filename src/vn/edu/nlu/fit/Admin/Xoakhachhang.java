package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/Xoakhachhang")
public class Xoakhachhang extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maDanhMuc = request.getParameter("maTK") == null ? "" : request.getParameter("maTK").trim();
        KhachHang user1 = new KhachHang(maDanhMuc);

        try {
            String sql = "DELETE FROM  taikhoan  WHERE maTK = ?";
            Connection cons = DBConnect.getConnection();
            PreparedStatement r = cons.prepareStatement(sql);
            r.setString(1, user1.getMaTK());
            r.executeUpdate();
            request.setAttribute("r",r);
            request.getRequestDispatcher("ListQuanTriVien").forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

