package vn.edu.nlu.fit.QuanLySanPham;
import vn.edu.nlu.fit.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
// use case quản lý sản phẩm
@WebServlet("/Listsanpham")
public class Listsanpham extends HttpServlet {
     //request: client gửi yêu cầu lên server
    //response: kết quả từ server trả về cho client
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try {
            HttpSession session = request.getSession();
            String  sql= "SELECT id,name,type,price,quatity,img,des,congty,tacgia,ngayxuatban,kichthuoc,nxb,loaibia,sotrang,masp,lower,active FROM product";
            PreparedStatement s = DBConnect.getPrepareStatement(sql);
            ResultSet rs=s.executeQuery(sql);
            request.setAttribute("rs",rs);
            request.getRequestDispatcher("sanpham.jsp").forward(request,response);
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

