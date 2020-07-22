package vn.edu.nlu.fit.Model;
import vn.edu.nlu.fit.DB.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Product {
    int id;
    String name;
    int quatity;
    String img;
    String masp;
    public double price;
    public Product() {
    }
    public Product(int id, String name, int quatity,String masp,double price) {
        this.id = id;
        this.name = name;
        this.quatity = quatity;
        this.masp = masp;
        this.price = price;
    }

    public static Product find(int id) {
        try {
            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img, masp  FROM product WHERE id= ? and type= ? and active =1");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p= new Product();
                p.id = rs.getInt(1);
                p.name = rs.getString(2);
                p.price = rs.getDouble(3);
                p.img = rs.getString(4);
                p.masp = rs.getString(5);
                p.quatity = 1;
            return p;
            }
            return null;


        } catch (SQLException | ClassNotFoundException e) {
    return null;
        }
    }
    public static Product find1(int id) {
        try {
            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img, masp FROM product WHERE id= ? and active =2");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p1= new Product();
                p1.id = rs.getInt(1);
                p1.name = rs.getString(2);
                p1.price = rs.getDouble(3);
                p1.img = rs.getString(4);
                p1.masp = rs.getString(5);
                p1.quatity = 1;
                return p1;
            }
            return null;
        } catch (SQLException | ClassNotFoundException e) {
            return null;
        }
    }
    public static Product find2(int id) {
        try {
            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img, masp FROM product WHERE id= ? and active =3");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p2= new Product();
                p2.id = rs.getInt(1);
                p2.name = rs.getString(2);
                p2.price = rs.getDouble(3);
                p2.img = rs.getString(4);
                p2.masp = rs.getString(5);

                p2.quatity = 1;
                return p2;
            }
            return null;


        } catch (SQLException | ClassNotFoundException e) {
            return null;

        }

    }
    public static Product find3(int id) {
        try {
            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img, masp FROM product WHERE id= ? and active =1");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p3= new Product();
                p3.id = rs.getInt(1);
                p3.name = rs.getString(2);
                p3.price = rs.getDouble(3);
                p3.img = rs.getString(4);
                p3.masp = rs.getString(5);
                p3.quatity = 1;
                return p3;
            }
            return null;


        } catch (SQLException | ClassNotFoundException e) {
            return null;

        }

    }
    public static Product find4(int id) {
        try {
            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img, masp FROM product WHERE id= ? and active =2");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p4= new Product();
                p4.id = rs.getInt(1);
                p4.name = rs.getString(2);
                p4.price = rs.getDouble(3);
                p4.img = rs.getString(4);
                p4.masp = rs.getString(5);
                p4.quatity = 1;
                return p4;
            }
            return null;


        } catch (SQLException | ClassNotFoundException e) {
            return null;

        }

    }
    public static Product find5(int id) {
        try {
            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img, masp FROM product WHERE id= ? and active =3");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p5= new Product();
                p5.id = rs.getInt(1);
                p5.name = rs.getString(2);
                p5.price = rs.getDouble(3);
                p5.img = rs.getString(4);
                p5.masp = rs.getString(5);
                p5.quatity = 1;
                return p5;
            }
            return null;
        } catch (SQLException | ClassNotFoundException e) {
            return null;

        }
    }
//    public static Product find7(int id) {
//        try {
//            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img FROM product WHERE id= ?");
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                Product p= new Product();
//                p.id = rs.getInt(1);
//                p.name = rs.getString(2);
//                p.price = rs.getDouble(3);
//                p.img = rs.getString(4);
//                p.quatity = 1;
//                return p;
//            }
//            return null;
//
//
//        } catch (SQLException | ClassNotFoundException e) {
//            return null;
//        }
//    }
//    public static Product find8(int id) {
//        try {
//            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img FROM product WHERE id= ?");
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                Product p1= new Product();
//                p1.id = rs.getInt(1);
//                p1.name = rs.getString(2);
//                p1.price = rs.getDouble(3);
//                p1.img = rs.getString(4);
//                p1.quatity = 1;
//                return p1;
//            }
//            return null;
//
//
//        } catch (SQLException | ClassNotFoundException e) {
//            return null;
//        }
//    }
//    public static Product find9(int id) {
//        try {
//            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img FROM product WHERE id= ?");
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                Product p2= new Product();
//                p2.id = rs.getInt(1);
//                p2.name = rs.getString(2);
//                p2.price = rs.getDouble(3);
//                p2.img = rs.getString(4);
//                p2.quatity = 1;
//                return p2;
//            }
//            return null;
//
//
//        } catch (SQLException | ClassNotFoundException e) {
//            return null;
//        }
//    }
////    chi tiet san pham
//public static Product find10(int id) {
//    try {
//        PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img FROM product WHERE id= ? and active =1");
//        ps.setInt(1, id);
//        ResultSet rs = ps.executeQuery();
//        if (rs.next()) {
//            Product p1= new Product();
//            p1.id = rs.getInt(1);
//            p1.name = rs.getString(2);
//            p1.price = rs.getDouble(3);
//            p1.img = rs.getString(4);
//            p1.quatity = 0;
//            return p1;
//        }
//        return null;
//
//
//    } catch (SQLException | ClassNotFoundException e) {
//        return null;
//    }
//}
//    public static Product find11(int id) {
//        try {
//            PreparedStatement ps = DBConnect.getPrepareStatement("SELECT id , `name` , price , img FROM product WHERE id= ? and active =2");
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                Product p2= new Product();
//                p2.id = rs.getInt(1);
//                p2.name = rs.getString(2);
//                p2.price = rs.getDouble(3);
//                p2.img = rs.getString(4);
//                p2.quatity = 0;
//                return p2;
//            }
//            return null;
//
//
//        } catch (SQLException | ClassNotFoundException e) {
//            return null;
//        }
//    }
//    public static Product find12(int id) {
//        try {
//            PreparedStatement ps1 = DBConnect.getPrepareStatement("SELECT id , `name` , price , img FROM product WHERE id= ? and active =3");
//            ps1.setInt(1, id);
//            ResultSet rs = ps1.executeQuery();
//            if (rs.next()) {
//                Product ps= new Product();
//                ps.id = rs.getInt(1);
//                ps.name = rs.getString(2);
//                ps.price = rs.getDouble(3);
//                ps.img = rs.getString(4);
//                ps.quatity = 0;
//                return ps;
//            }
//            return null;
//
//
//        }
//        catch (SQLException | ClassNotFoundException e) {
//            return null;
//
//        }
//    }

    public void quatityUp() {
        this.quatity++;
    }
    public void  quatityUp(int quatity){
        setQuatity (quatity);
    }
public String getImg (){
        return img;
    }
public  void setImg(String img){
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public int getQuatity() {
        return quatity;
    }

    public void setQuatity(int quatity) {
        if(quatity<1) quatity=1;
        this.quatity=quatity;
    }
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
public  double total(){
        return  price*quatity;
}



}

