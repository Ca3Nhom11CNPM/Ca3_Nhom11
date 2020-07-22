package vn.edu.nlu.fit.controller.cart;

import vn.edu.nlu.fit.Model.Cart;
import vn.edu.nlu.fit.Utill.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/CartUpdate")
public class CartUpdate extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            int id = Integer.parseInt(request.getParameter("id"));
            int quatity = Integer.parseInt(request.getParameter("quatity"));
            vn.edu.nlu.fit.Model.Cart c = (vn.edu.nlu.fit.Model.Cart) session.getAttribute("Cart");
            if (c == null) c = new Cart();
            c.put(id,quatity);
            session.setAttribute("Cart", c);
        }
        catch (NumberFormatException e){
        }

        response.sendRedirect(Util.fullPath("ShowCart"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

