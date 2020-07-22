package vn.edu.nlu.fit.Search;

import vn.edu.nlu.fit.DB.DBConnect;
import vn.edu.nlu.fit.Model.Product;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchDao {
public static  List<Product> Displayresult (HttpServletRequest request, String name1){
    List<Product> list = new ArrayList<>();
   String sql = "Select * from product where `name` like  '"+name1+"%' OR `name` LIKE '%" + name1 + "%'";
try {
    Connection cons = DBConnect.getConnection();
    PreparedStatement ptmt = cons.prepareStatement(sql);
    ResultSet rs = ptmt.executeQuery();
    if(!rs.isBeforeFirst()){
request.setAttribute("ketqua","Không có kết quả");
    }
    else {
        while (rs.next()){
       Product p = new Product();
       String name = rs.getString("name");
       p.setName(name);
       list.add(p);
        }
    }

} catch (SQLException | ClassNotFoundException e) {
    e.printStackTrace();
}
return list;
}
}
