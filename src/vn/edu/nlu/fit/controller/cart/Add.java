package vn.edu.nlu.fit.controller.cart;
import vn.edu.nlu.fit.Model.Cart;
import vn.edu.nlu.fit.Model.Product;
import vn.edu.nlu.fit.Utill.Util;
import vn.edu.nlu.fit.controller.ListProduct;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AddCart")
public class Add extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            int id = Integer.parseInt(request.getParameter("id"));

            Product p = Product.find(id);
            Product p1 = Product.find1(id);
            Product p2 = Product.find2(id);
            Product p3 = Product.find3(id);
            Product p4 = Product.find4(id);
            Product p5 = Product.find5(id);
            Cart c = (Cart) session.getAttribute("Cart");
            if (c == null) c = new Cart();
            if (p != null) c.put(p);
            if (p1 != null) c.put(p1);
            if (p2 != null) c.put(p2);
            if (p3 != null) c.put(p3);
            if (p4 != null) c.put(p4);
            if (p5 != null) c.put(p5);
            session.setAttribute("Cart", c);
        }
           catch (NumberFormatException e){
        }
        response.sendRedirect(Util.fullPath("ListProduct"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

