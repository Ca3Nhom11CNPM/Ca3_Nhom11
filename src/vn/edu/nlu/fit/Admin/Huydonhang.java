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

@WebServlet("/Huydonhang")
public class Huydonhang extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maDanhMuc = request.getParameter("id") == null ? "" : request.getParameter("id").trim();
        String tinhtrangdon = request.getParameter("tinhtrang")  == null ? "" : request.getParameter("tinhtrang").trim() ;
        Hoadon1 user1 = new Hoadon1(maDanhMuc,tinhtrangdon);

        try {
            String sql = "UPDATE `hoadon` set tinhtrangdon = 'Hủy đơn hàng' where id = ?";
            Connection cons = DBConnect.getConnection();
            PreparedStatement r = cons.prepareStatement(sql);
//            r.setString(1, user1.getTinhtrangdon());
            r.setString(1, user1.getId());
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

