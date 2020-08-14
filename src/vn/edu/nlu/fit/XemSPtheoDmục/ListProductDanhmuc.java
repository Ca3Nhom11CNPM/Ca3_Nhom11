package vn.edu.nlu.fit.controller;

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
import java.sql.Statement;


@WebServlet("/ListProductTrangchu")
public class ListProductTrangchu extends HttpServlet {
             //Bước 2.Hệ thống goi phương thức doGet()
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
             //Bước 2.1.Lấy danh mục
               String sql1 = "SELECT id,name FROM producttype WHERE active=1;";
              PreparedStatement s1 = DBConnect.getPrepareStatement(sql1);
              ResultSet rs1 =s1.executeQuery(sql1);
               request.setAttribute("rs1",rs1);
              String sql2 = "SELECT id,name FROM producttype WHERE active=2;";
              PreparedStatement s2 = DBConnect.getPrepareStatement(sql2);
              ResultSet rs2 =s2.executeQuery(sql2);
               request.setAttribute("rs2",rs2);
              String sql3 = "SELECT id,name FROM producttype WHERE active=3;";
              PreparedStatement s3 = DBConnect.getPrepareStatement(sql3);
              ResultSet rs3 =s3.executeQuery(sql3);
               request.setAttribute("rs3",rs3);

            request.getRequestDispatcher("header.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}


