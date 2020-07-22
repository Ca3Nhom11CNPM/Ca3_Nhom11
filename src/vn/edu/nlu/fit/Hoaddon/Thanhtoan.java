package vn.edu.nlu.fit.Hoaddon;

import vn.edu.nlu.fit.Admin.Danhmuc;
import vn.edu.nlu.fit.Model.Cart;
import vn.edu.nlu.fit.Model.Product;
import vn.edu.nlu.fit.filter.TaiKhoanDaoIMP;

import vn.edu.nlu.fit.filter.User1;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;

import java.util.Date;

import java.util.HashMap;
import java.util.Map;

@WebServlet("/Thanhtoan")
public class Thanhtoan extends HttpServlet {
    Themhoadon themhoadon = new Themhoadon();
    Themchitiethoadon themchitiethoadon=new Themchitiethoadon();
    TaiKhoanDaoIMP taiKhoanDaoIMP = new TaiKhoanDaoIMP();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String mail = request.getParameter("mail");
        String tinh = request.getParameter("tinh");
        String huyen = request.getParameter("huyen");
        String phuong = request.getParameter("phuong");
        String diachi = request.getParameter("diachi");
        String diaChiGiaoHang =  "Số nhà: "+diachi+", xã/phường: "+phuong+", quận/huyện: "+huyen +", TP: "+tinh;
        String hinhthuc = request.getParameter("hinhthuc");
        String userName = (String) session.getAttribute("uname");
    String tinhtrang = "Chờ xác nhận";
        Cart c = (Cart) session.getAttribute("Cart");
        try {
            Date date = new Date();
            String mhd = "" + date.getTime();
//            User1 user = new User1();
//            user.setMaTK(taiKhoanDaoIMP.getTaiKhoan(userName).getMaTK());
            Hoadon hd = new Hoadon(0,mhd, userName,phone,diaChiGiaoHang,hinhthuc, new Timestamp((new Date().getTime())), tinhtrang );
            hd.setMahoadon(mhd);
//            hd.setUser(taiKhoanDaoIMP.getTaiKhoan(userName));
            themhoadon.themHoaDon(hd);
            if(c ==null)c= new Cart();
            for(Product p:c.list())
            {
              p.getMasp();
//             p.getName();
                themchitiethoadon.themCTHD(new Chitiethoadon(0, hd, p, p.getQuatity(), p.getPrice()));
            }
            response.sendRedirect("thanhtoan.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
}
}

