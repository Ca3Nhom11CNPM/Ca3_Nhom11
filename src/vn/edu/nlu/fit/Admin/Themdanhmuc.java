package vn.edu.nlu.fit.Admin;

import vn.edu.nlu.fit.DB.DBConnect;
import vn.edu.nlu.fit.controller.ListProduct;
import vn.edu.nlu.fit.filter.TaiKhoanDaoIMP;
import vn.edu.nlu.fit.filter.User1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/Themdanhmuc")
public class Themdanhmuc extends HttpServlet {
ThemdanhmucIMP themdanhmucIMP = new ThemdanhmucIMP();
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
                request.getRequestDispatcher("themdm.jsp").forward(request, response);
            } else {
//            response.sendRedirect("login.jsp");
//            Date id = new Date();
               Danhmuc user = new Danhmuc(maDanhMuc,tenDanhMuc,active);
         themdanhmucIMP.themTaiKhoan(user);
                response.sendRedirect("Listdanhmuc");

            }
    }
        }




