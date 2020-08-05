package vn.edu.nlu.fit.XemSPtheoDmục;

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
    //Bước 2 và 5: Gửi yêu cầu đến hệ thống
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        try {
//Bước 2.1 : Lấy danh mục
            String sql="SELECT id,name FROM producttype";
            PreparedStatement s = DBConnect.getPrepareStatement(sql);

            ResultSet rs=s.executeQuery(sql);
            request.setAttribute("rs",rs);

            sql="SELECT id,name FROM listnhaxuatban";
            PreparedStatement s7 = DBConnect.getPrepareStatement(sql);
            ResultSet r=s7.executeQuery(sql);
            request.setAttribute("r",r);

//Bước 5.1:Lấy thông tin sách
            String sql1= "SELECT id,name,price,img FROM product WHERE active=1";
            PreparedStatement s1 = DBConnect.getPrepareStatement(sql1);
            if(type != null) sql1 += " and type=" + type;
            ResultSet p= s1.executeQuery(sql1);
            request.setAttribute("p",p);


//             sql1 = "SELECT id,name FROM producttype WHERE active=1";
//            PreparedStatement a = DBConnect.getPrepareStatement(sql1);
//            ResultSet rs1=a.executeQuery(sql1);
//            request.setAttribute("rs1",rs1);
//
//            sql1 = "SELECT id,name FROM producttype WHERE active=2";
//            PreparedStatement a1 = DBConnect.getPrepareStatement(sql1);
//            ResultSet rs2=a1.executeQuery(sql1);
//            request.setAttribute("rs2",rs2);
//
//            sql1 = "SELECT id,name FROM producttype WHERE active=3";
//            PreparedStatement a2 = DBConnect.getPrepareStatement(sql1);
//            ResultSet rs3=a2.executeQuery(sql1);
//            request.setAttribute("rs3",rs3);

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

