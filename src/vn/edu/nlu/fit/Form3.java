package vn.edu.nlu.fit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Form3")
public class Form3 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String day = request.getParameter("day");
        String thang = request.getParameter("thang");
        String nam = request.getParameter("nam");
        String number= request.getParameter("number");
        String card= request.getParameter("card");
        String selectd =request.getParameter("selectd");
        String select =request.getParameter("select");
        response.getWriter().println("<p style='color:green'>Name:"+name+"</p>");
        response.getWriter().println("<p style='color:red'>Email:"+email+"</p>");
        response.getWriter().println("<p style='color:blue'>PassWord:"+pass+"</p>");
        response.getWriter().println("<p style='color:blue'>Day:"+day+"</p>");
        response.getWriter().println("<p style='color:blue'>Month:"+thang+"</p>");
        response.getWriter().println("<p style='color:blue'>Year:"+nam+"</p>");
        response.getWriter().println("<p style='color:blue'>Card Number:"+number+"</p>");
        response.getWriter().println("<p style='color:blue'>Card CVC:"+card+"</p>");
        response.getWriter().println("<p style='color:blue'> Select Ngay:"+selectd+"</p>");
        response.getWriter().println("<p style='color:blue'> Select Nam:"+select+"</p>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

