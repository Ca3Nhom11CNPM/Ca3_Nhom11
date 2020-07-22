package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;
import vn.edu.nlu.fit.Hoaddon.Hoadon;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/Xoadonhang")
public class Xoadonhang extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Integer maDanhMuc = Integer.valueOf(request.getParameter("id") == null ? "" : request.getParameter("id").trim());
    Hoadon hd = new Hoadon(maDanhMuc);

        try {
            String sql = "DELETE hoadon  , chitiethoadon  FROM hoadon INNER JOIN chitiethoadon ON hoadon.mahoadon = chitiethoadon.mahoadon WHERE hoadon.id = ?";
            Connection cons = DBConnect.getConnection();
            PreparedStatement r = cons.prepareStatement(sql);
            r.setInt(1, hd.getId());
            r.executeUpdate();
            request.setAttribute("r",r);
            request.getRequestDispatcher("Quanlydonhang").forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

