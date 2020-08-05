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


@WebServlet("/Chitietsanpham1")
public class Chitietsanpham1 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {

            String sql="SELECT id, name FROM producttype";
            PreparedStatement s = DBConnect.getPrepareStatement(sql);
            ResultSet rs=s.executeQuery(sql);
            request.setAttribute("rs",rs);



            sql= "SELECT id,name,price,img,congty,tacgia,ngayxuatban,kichthuoc,nxb,loaibia,sotrang,masp,des FROM product where active =2";
            PreparedStatement s2 = DBConnect.getPrepareStatement(sql);
            if(id != null) sql += " and id=" + id;
            ResultSet p1= s2.executeQuery(sql);
            request.setAttribute("p1",p1);


            sql= "SELECT id,name,price,img,congty,tacgia,ngayxuatban,kichthuoc,nxb,loaibia,sotrang,masp,des FROM product WHERE active=2 and type=1";
            PreparedStatement s22 = DBConnect.getPrepareStatement(sql);
            ResultSet p2= s22.executeQuery(sql);
            request.setAttribute("p2",p2);

            request.getRequestDispatcher("slide1.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}


