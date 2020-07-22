package vn.edu.nlu.fit.DB;


import java.sql.*;

public class DBConnect  {
    private static  String URL="jdbc:mysql://localhost:3306/demo?useUnicode=true&characterEncoding=utf-8";

    private static String UNAME="root";
    private  static String PASS ="";
static Connection con;
    public static PreparedStatement getPrepareStatement (String sql) throws ClassNotFoundException, SQLException{
        if(con==null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL,UNAME,PASS);
//            con = DriverManager.getConnection(URL);
        }
        return  con.prepareStatement(sql);
    }


    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (con != null && !con.isClosed()) {
            return con;
        } else {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL,UNAME,PASS);
//            con = DriverManager.getConnection(URL);
            return con;
        }
    }
    public static Statement getStatement() throws ClassNotFoundException, SQLException{
        if(con==null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL,UNAME,PASS);
//            con = DriverManager.getConnection(URL);
        }
        return  con.createStatement();
    }


    public static Statement connect() throws ClassNotFoundException, SQLException  {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL,UNAME,PASS);
//            con = DriverManager.getConnection(URL);
            return con.createStatement();

        } else {
            return con.createStatement();
        }

    }
    public static void main(String[] args) throws Exception {
        Statement s = DBConnect.connect();
        String sql = "SELECT * FROM user";
        ResultSet rs = s.executeQuery(sql);
//        int i=rs.
        rs.last();
        System.out.println(rs.getRow());
        rs.beforeFirst();
        while (rs.next()) {
            System.out.println(rs.getString(2));
        }
    }


}
