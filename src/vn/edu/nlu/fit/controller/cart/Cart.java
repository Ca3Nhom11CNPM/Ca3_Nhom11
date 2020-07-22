package vn.edu.nlu.fit.controller.cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ShowCart")
public class Cart extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        vn.edu.nlu.fit.Model.Cart c = (  vn.edu.nlu.fit.Model.Cart) request.getSession().getAttribute("Cart");
      request.setAttribute("Cart",c);
      request.getRequestDispatcher("cart.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

