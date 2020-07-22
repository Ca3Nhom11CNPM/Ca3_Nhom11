package vn.edu.nlu.fit.Admin;

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

@WebServlet("/ListNXB")
public class ListNXB extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try {
          String sql="SELECT id,name,active FROM listnhaxuatban";
           PreparedStatement s1= DBConnect.getPrepareStatement(sql);
           ResultSet r=s1.executeQuery(sql);
           request.setAttribute("r",r);

           request.getRequestDispatcher("Quanlynhaxuatban.jsp").forward(request,response);
       }
       catch (ClassNotFoundException | SQLException e) {
           e.printStackTrace();
       }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

