package vn.edu.nlu.fit.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Suanguoidung")
public class Suanguoidung extends HttpServlet {
    UpdatenguoidungIMP updatenguoidungIMP = new UpdatenguoidungIMP();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<String> error = new ArrayList<>();
        String maTK = request.getParameter("stt") == null ? "" : request.getParameter("stt").trim();
        String name = request.getParameter("name") == null ? "" : request.getParameter("name").trim();
        String email = request.getParameter("email") == null ? "" : request.getParameter("email").trim();
        String password = request.getParameter("password") == null ? "" : request.getParameter("password").trim();
        String fullname = request.getParameter("fullname") == null ? "" : request.getParameter("fullname").trim();
        String quyen = request.getParameter("quyen") == null ? "" : request.getParameter("quyen").trim();
        String err = "";
        if (maTK.equals("") || name.equals("") || email.equals("") || password.equals("") || fullname.equals("")|| quyen.equals("") ) {
            err = "Vui lòng nhập đầy đủ thông tin!";
        }

        if (err.length() > 0) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("Chitietnguoidung").forward(request, response);
        } else {
//            response.sendRedirect("login.jsp");
//            Date id = new Date();
            Nguoidung user = new Nguoidung(maTK, name, email, password, fullname, quyen);
            updatenguoidungIMP.UpdateTaiKhoan(user);
            response.sendRedirect("ListQuanTriVien");
        }
    }
}

