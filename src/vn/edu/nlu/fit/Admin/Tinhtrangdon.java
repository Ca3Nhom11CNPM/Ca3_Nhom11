package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;
import vn.edu.nlu.fit.Hoaddon.Chitiethoadon;
import vn.edu.nlu.fit.Hoaddon.Hoadon;
import vn.edu.nlu.fit.Hoaddon.Themhoadon;
import vn.edu.nlu.fit.Model.Cart;
import vn.edu.nlu.fit.Model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

@WebServlet("/Tinhtrangdon")
public class Tinhtrangdon extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maDanhMuc = request.getParameter("id") == null ? "" : request.getParameter("id").trim();
        String tinhtrangdon = request.getParameter("tinhtrang")  == null ? "" : request.getParameter("tinhtrang").trim() ;
        Hoadon1 user1 = new Hoadon1(maDanhMuc,tinhtrangdon);

        try {
            String sql = "UPDATE `hoadon` set tinhtrangdon = 'Đang vận chuyển' where id = ?";
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
//        ArrayList<String> error = new ArrayList<>();
//        HttpSession session = request.getSession();
//        request.setCharacterEncoding("utf-8");
//        response.setCharacterEncoding("utf-8");
//     String id = request.getParameter("id");
//        String name = request.getParameter("name");
//        String phone = request.getParameter("phone");
//        String mail = request.getParameter("mail");
//        String tinh = request.getParameter("tinh");
//        String huyen = request.getParameter("huyen");
//        String phuong = request.getParameter("phuong");
//        String diachi = request.getParameter("diachi");
//        String diaChiGiaoHang =  "Số nhà: "+diachi+", xã/phường: "+phuong+", quận/huyện: "+huyen +", TP: "+tinh;
//        String hinhthuc = request.getParameter("hinhthuc");
//        String tinhtrangdon = request.getParameter("name");
//        String userName = (String) session.getAttribute("uname");
//        String err = "";
//        if (id.equals("") || tinhtrangdon.equals("") ) {
//            err = "Vui lòng nhập đầy đủ thông tin!";
//        }
//
//        if (err.length() > 0) {
//            request.setAttribute("error", error);
//            request.getRequestDispatcher("Chitiettinhtrang").forward(request, response);
//        } else {
//
//            Hoadon1 hd = new Hoadon1(id,tinhtrangdon);
//            themhoadon.themtinhtrang(hd);
//            response.sendRedirect("Quanlydonhang");
//        }
//
    }
}

