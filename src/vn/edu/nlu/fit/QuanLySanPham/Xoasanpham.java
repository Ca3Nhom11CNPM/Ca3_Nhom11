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
//chức năng xóa sản phẩm
@WebServlet("/Xoasanpham")
public class Xoasanpham extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maDanhMuc = request.getParameter("id") == null ? "" : request.getParameter("id").trim();
       Sanpham user1 = new Sanpham(maDanhMuc);
        try {
            String sql = "DELETE FROM  product  WHERE id = ?";
            Connection cons = DBConnect.getConnection();
            PreparedStatement rs = cons.prepareStatement(sql);
            rs.setString(1, user1.getId());
            rs.executeUpdate();
            request.setAttribute("rs",rs);
            request.getRequestDispatcher("Listsanpham").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

