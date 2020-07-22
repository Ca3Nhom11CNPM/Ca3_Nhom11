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

@WebServlet("/Xoanhaxuatban")
public class Xoanhaxuatban extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maDanhMuc = request.getParameter("id") == null ? "" : request.getParameter("id").trim();
        Danhmuc user1 = new Danhmuc(maDanhMuc);

        try {
            String sql = "DELETE FROM listnhaxuatban  WHERE id = ?";
            Connection cons = DBConnect.getConnection();
            PreparedStatement rs = cons.prepareStatement(sql);
            rs.setString(1, user1.getId());
            rs.executeUpdate();
            request.setAttribute("rs",rs);
            request.getRequestDispatcher("ListNXB").forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();



        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

