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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String sql="SELECT id,name FROM producttype";
            PreparedStatement s = DBConnect.getPrepareStatement(sql);
            ResultSet rs=s.executeQuery(sql);
            request.setAttribute("rs1",rs);


          String sql1= "SELECT id,name,price,img FROM product WHERE active=1 and type =1";
            PreparedStatement s1 = DBConnect.getPrepareStatement(sql1);
            ResultSet p= s1.executeQuery(sql1);
            request.setAttribute("pi",p);


            String sql2= "SELECT id,name,price,img FROM product WHERE active=1 and type =2";
            PreparedStatement s2 = DBConnect.getPrepareStatement(sql2);
            ResultSet p1= s2.executeQuery(sql2);
            request.setAttribute("pi1",p1);


          String  sql3= "SELECT id,name,price,img,lower FROM product WHERE active=1 and type =3";
            PreparedStatement s3 = DBConnect.getPrepareStatement(sql3);
            ResultSet p2= s3.executeQuery(sql3);
            request.setAttribute("pi2",p2);


            String sql4= "SELECT id,img FROM slide WHERE active=1";
            PreparedStatement s4 = DBConnect.getPrepareStatement(sql4);
            ResultSet p3= s4.executeQuery(sql4);
            request.setAttribute("sl",p3);


            sql= "SELECT id,img FROM slide WHERE active=2";
            PreparedStatement s5 = DBConnect.getPrepareStatement(sql);
            ResultSet p4= s5.executeQuery(sql);
            request.setAttribute("sl1",p4);


            sql= "SELECT id,img FROM slide WHERE active=3";
            PreparedStatement s6 = DBConnect.getPrepareStatement(sql);
            ResultSet p5= s6.executeQuery(sql);
            request.setAttribute("sl2",p5);

            request.getRequestDispatcher("index.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}


