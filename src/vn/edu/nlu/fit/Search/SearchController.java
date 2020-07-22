package vn.edu.nlu.fit.Search;

import vn.edu.nlu.fit.Model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        SearchDao searchDao= new SearchDao();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");

        try {
            List<Product> list = SearchDao.Displayresult(request,name);
            request.setAttribute("listemp",list);
            RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
            rd.forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}

