package vn.edu.nlu.fit.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Themnhaxuatban")
public class Themnhaxuatban extends HttpServlet {
  NhaXuatBanIMP nhaXuatBanIMP = new NhaXuatBanIMP();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<String> error = new ArrayList<>();
        String maDanhMuc = request.getParameter("id") == null ? "" : request.getParameter("id").trim();
        String tenDanhMuc = request.getParameter("name") == null ? "" : request.getParameter("name").trim();
        String active = request.getParameter("active") == null ? "" : request.getParameter("active").trim();
        String err = "";
        if (maDanhMuc.equals("") || tenDanhMuc.equals("") || active.equals("")) {
            err = "Vui lòng nhập đầy đủ thông tin!";
        }

        if (err.length() > 0) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("themnhaxuatban.jsp").forward(request, response);
        } else {
//            response.sendRedirect("login.jsp");
//            Date id = new Date();
            NhaXuatBan user = new NhaXuatBan(maDanhMuc,tenDanhMuc,active);
            nhaXuatBanIMP.themTaiKhoan(user);
            response.sendRedirect("ListNXB");

        }
    }
}

