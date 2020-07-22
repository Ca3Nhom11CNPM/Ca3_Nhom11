package vn.edu.nlu.fit.Search;




import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class Searchforward extends HttpServlet {
    private static  final long serialVersionUID =1L;
    public  Searchforward (){
        super();
    }
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        RequestDispatcher rd = request.getRequestDispatcher("Timkiem.jsp");
        rd.forward(request,response);
//        String search = request.getParameter("search");
//        response.setContentType("text/html");
//        if(!((search.trim()).equals(""))){
//            String searchString = getSearchResult(search);
//            response.getWriter().write(searchString);
//        }
//        else
//            response.getWriter().write("");
//    }
//    public String getSearchResult(String search) {
//        Connection conn = null;
//        Statement st=null;
//        ResultSet res=null;
//        String finalSearch = "";
//        try{
//            Class.forName("com.mysql.jdbc.Driver");
//            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/search","root","amirtha");
//            st=conn.createStatement();
//            String s = "SELECT keyword FROM se WHERE keyword like'"+search+"%'ORDER BY keyword";
//            res = st.executeQuery(s) ;
//            while (res.next())
//            {
//                String un = res.getString(1);
//                finalSearch+= un+"\n";
//            }
//            st.close();
//            conn.close();
//        }catch(Exception e){}
//        return finalSearch;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}