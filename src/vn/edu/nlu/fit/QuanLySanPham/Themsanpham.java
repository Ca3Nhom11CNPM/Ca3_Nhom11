package vn.edu.nlu.fit.QuanLySanPham;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
// chức năng thêm sản phẩm
@WebServlet("/Themsanpham")
public class Themsanpham extends HttpServlet {
    ThemsanphamIMP themsanphamIMP = new ThemsanphamIMP();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<String> error = new ArrayList<>();
        String maDanhMuc = request.getParameter("id") == null ? "" : request.getParameter("id").trim();
        String tenDanhMuc = request.getParameter("name") == null ? "" : request.getParameter("name").trim();
        String type = request.getParameter("type") == null ? "" : request.getParameter("type").trim();
        String price = request.getParameter("price") == null ? "" : request.getParameter("price").trim();
        String quatity = request.getParameter("quatity") == null ? "" : request.getParameter("quatity").trim();
        String img = request.getParameter("img") == null ? "" : request.getParameter("img").trim();
        String des = request.getParameter("des") == null ? "" : request.getParameter("des").trim();
        String congty = request.getParameter("congty") == null ? "" : request.getParameter("congty").trim();
        String tacgia = request.getParameter("tacgia") == null ? "" : request.getParameter("tacgia").trim();
        String ngayxuatban = request.getParameter("ngayxuatban") == null ? "" : request.getParameter("ngayxuatban").trim();
        String kichthuoc = request.getParameter("kichthuoc") == null ? "" : request.getParameter("kichthuoc").trim();
        String nxb = request.getParameter("nxb") == null ? "" : request.getParameter("nxb").trim();
        String loaibia = request.getParameter("loaibia") == null ? "" : request.getParameter("loaibia").trim();
        String sotrang = request.getParameter("sotrang") == null ? "" : request.getParameter("sotrang").trim();
        String masp = request.getParameter("masp") == null ? "" : request.getParameter("masp").trim();
        String lower = request.getParameter("lower") == null ? "" : request.getParameter("lower").trim();
        String active = request.getParameter("active") == null ? "" : request.getParameter("active").trim();
        String err = "";
        if (maDanhMuc.equals("") || tenDanhMuc.equals("") || type.equals("") || price.equals("") || quatity.equals("") || img.equals("") || des.equals("") || congty.equals("") || tacgia.equals("") || ngayxuatban.equals("") || kichthuoc.equals("") || nxb.equals("") || loaibia.equals("") || sotrang.equals("") || masp.equals("") || lower.equals("") || active.equals("")) {
            err = "Vui lòng nhập đầy đủ thông tin!";
        }
        if (err.length() > 0) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("themsanpham.jsp").forward(request, response);
        } else {
            Sanpham user = new Sanpham(maDanhMuc,tenDanhMuc,type,price,quatity,img,des,congty,tacgia,ngayxuatban,kichthuoc,nxb,loaibia,sotrang,masp,lower,active);
            themsanphamIMP.themTaiKhoan(user);
            response.sendRedirect("Listsanpham");
        }
    }
}

