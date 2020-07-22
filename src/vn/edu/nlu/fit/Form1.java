package vn.edu.nlu.fit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Form1")
public class Form1 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        String email = request.getParameter("email");
        String number = request.getParameter("number");
        String select =request.getParameter("select");
        String message =request.getParameter("message");
        response.getWriter().println("<p style='color:green'>Name:"+name+"</p>");
        response.getWriter().println("<p style='color:red'>Email:"+email+"</p>");
        response.getWriter().println("<p style='color:blue'>Number:"+number+"</p>");
        response.getWriter().println("<p style='color:violet'>Select:"+select+"</p>");
        response.getWriter().println("<p style='color:pink'>Message:"+message+"</p>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}


