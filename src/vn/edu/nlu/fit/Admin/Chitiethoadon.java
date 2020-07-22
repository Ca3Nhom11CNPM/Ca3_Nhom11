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

@WebServlet("/Chitiethoadon")
public class Chitiethoadon extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("id");
        try {

            String sql="SELECT c.id , h.mahoadon, c.masanpham, h.tentaikhoan,c.soluong,c.dongia, h.ngaymua, h.sodienthoai,h.diachi, h.hinhthuc, h.tinhtrangdon FROM hoadon as h ,chitiethoadon as c where h.mahoadon = c.mahoadon";
            PreparedStatement s1 = DBConnect.getPrepareStatement(sql);
            if(type != null) sql += " and c.id = " + type;
            ResultSet r=s1.executeQuery(sql);
            request.setAttribute("r",r);

            request.getRequestDispatcher("chitiethoadon.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

