package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ListQuanTriVien")
public class ListQuanTriVien extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sql="SELECT maTK, t.name, password, fullname, email, u.quyen FROM taikhoan as t , nguoidung as u where t.`quyen` = u.id";
            PreparedStatement s1= DBConnect.getPrepareStatement(sql);
            ResultSet r=s1.executeQuery(sql);
            request.setAttribute("r",r);

            request.getRequestDispatcher("quantri.jsp").forward(request,response);
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

