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

@WebServlet("/ListProduct")
public class ListProduct extends HttpServlet {
    //Bước 5.Hệ thống goi phương thức doGet()
    //request là client gửi yêu cầu lên server
    //response là kết quả từ server trả về cho client
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //getParameter trả về tham số yêu cầu http.Truyền từ jsp sang server
        String type = request.getParameter("type");
        try {

//Bước 5.1:Lấy thông tin sách
            String sql1= "SELECT id,name,price,img FROM product WHERE active=1";
            PreparedStatement s1 = DBConnect.getPrepareStatement(sql1);
            if(type != null) sql1 += " and type=" + type;
            ResultSet p= s1.executeQuery(sql1);
            request.setAttribute("p",p);


            String sql2= "SELECT id,name,price,img FROM product WHERE active=2";
            PreparedStatement s2 = DBConnect.getPrepareStatement(sql);
            if(type != null) sql2 += " and type=" + type;
            ResultSet p1= s2.executeQuery(sql2);
            request.setAttribute("p1",p1);


            String sql3= "SELECT id,name,price,img FROM product WHERE active=3";
            PreparedStatement s3 = DBConnect.getPrepareStatement(sql3);
            if(type != null) sql3 += " and type=" + type;
            ResultSet p2= s3.executeQuery(sql3);
            request.setAttribute("p2",p2);


            String sql4= "SELECT id,name,price,img,des FROM product WHERE active=1";
            PreparedStatement s4 = DBConnect.getPrepareStatement(sql4);
            if(type != null) sql4 += " and type=" + type;
            ResultSet p3= s4.executeQuery(sql4);
            request.setAttribute("p3",p3);


            String sql5= "SELECT id,name,price,img,des FROM product WHERE active=2";
            PreparedStatement s5 = DBConnect.getPrepareStatement(sql5);
            if(type != null) sql5 += " and type=" + type;
            ResultSet p4= s5.executeQuery(sql5);
            request.setAttribute("p4",p4);

            String sql6= "SELECT id,name,price,img,des FROM product WHERE active=3";
            PreparedStatement s6 = DBConnect.getPrepareStatement(sql6);
            if(type != null) sql6 += " and type=" + type;
            ResultSet p5= s6.executeQuery(sql6);
            request.setAttribute("p5",p5);
            request.getRequestDispatcher("shop-grid.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}

