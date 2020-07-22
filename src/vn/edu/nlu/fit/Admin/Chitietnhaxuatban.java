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

@WebServlet("/Chitietnhaxuatban")
public class Chitietnhaxuatban extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("id");
        try {

            String sql="SELECT id,name,active FROM listnhaxuatban";
            PreparedStatement s = DBConnect.getPrepareStatement(sql);
            if(type != null) sql += " where id=" + type;
            ResultSet rs=s.executeQuery(sql);
            request.setAttribute("rs",rs);

            request.getRequestDispatcher("suanhaxuatban.jsp").forward(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

