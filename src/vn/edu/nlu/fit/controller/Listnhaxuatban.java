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
@WebServlet("/Listnhaxuatban")
public class Listnhaxuatban extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("nxb");
        try {
            String sql="SELECT id,name FROM producttype";
            PreparedStatement s = DBConnect.getPrepareStatement(sql);
            ResultSet rs=s.executeQuery(sql);
            request.setAttribute("rs",rs);

          sql="SELECT id,name FROM listnhaxuatban";
            PreparedStatement s1= DBConnect.getPrepareStatement(sql);
            ResultSet r=s1.executeQuery(sql);
            request.setAttribute("r",r);


            String sql1= "SELECT id,name,price,img FROM product WHERE active=1";
            PreparedStatement s2 = DBConnect.getPrepareStatement(sql1);
            if(type != null) sql1 += " and nxb=" + type;
            ResultSet p= s2.executeQuery(sql1);
            request.setAttribute("p",p);

          sql1= "SELECT id,name,price,img FROM product WHERE active=2";
            PreparedStatement s3 = DBConnect.getPrepareStatement(sql1);
            if(type != null) sql1 += " and nxb=" + type;
            ResultSet p1= s3.executeQuery(sql1);
            request.setAttribute("p1",p1);

            sql1= "SELECT id,name,price,img FROM product WHERE active=3";
            PreparedStatement s4 = DBConnect.getPrepareStatement(sql1);
            if(type != null) sql1 += " and nxb=" + type;
            ResultSet p2= s4.executeQuery(sql1);
            request.setAttribute("p2",p2);

            String sql4= "SELECT id,name,price,img,des FROM product WHERE active=1";
            PreparedStatement s5 = DBConnect.getPrepareStatement(sql4);
            if(type != null) sql4 += " and nxb=" + type;
            ResultSet p3= s5.executeQuery(sql4);
            request.setAttribute("p3",p3);

            String sql5= "SELECT id,name,price,img,des FROM product WHERE active=2";
            PreparedStatement s6 = DBConnect.getPrepareStatement(sql5);
            if(type != null) sql5 += " and nxb=" + type;
            ResultSet p4= s6.executeQuery(sql5);
            request.setAttribute("p4",p4);

            String sql6= "SELECT id,name,price,img,des FROM product WHERE active=3";
            PreparedStatement s7 = DBConnect.getPrepareStatement(sql6);
            if(type != null) sql6 += " and nxb=" + type;
            ResultSet p5= s7.executeQuery(sql6);
            request.setAttribute("p5",p5);

            request.getRequestDispatcher("nhaxuatban.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}

