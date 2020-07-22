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


@WebServlet("/Chitietsanpham5")
public class Chitietsanpham5 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {

            String sql="SELECT id,name FROM producttype";
            PreparedStatement s = DBConnect.getPrepareStatement(sql);
            ResultSet rs=s.executeQuery(sql);
            request.setAttribute("rs",rs);


            sql= "SELECT id,name,price,img,congty,tacgia,ngayxuatban,kichthuoc,nxb,loaibia,sotrang,masp,des FROM product where active=3";
            PreparedStatement s2 = DBConnect.getPrepareStatement(sql);
            if(id != null) sql += " and id=" + id;
            ResultSet p5= s2.executeQuery(sql);
            request.setAttribute("p5",p5);

            sql= "SELECT id,name,price,img,congty,tacgia,ngayxuatban,kichthuoc,nxb,loaibia,sotrang,masp,des FROM product where active =3 and type=1";
            PreparedStatement s23 = DBConnect.getPrepareStatement(sql);
            ResultSet p6= s23.executeQuery(sql);
            request.setAttribute("p6",p6);
            request.getRequestDispatcher("slide6.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}


