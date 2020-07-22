package vn.edu.nlu.fit.Admin;
import vn.edu.nlu.fit.filter.User1;
import java.sql.Timestamp;
public class Hoadon1 {
    String id;
    String  tinhtrangdon ;

    public Hoadon1 (String id){
        this.id =id;
    }
    public Hoadon1 (String id, String tinhtrangdon ){
        this.id=id;
        this.tinhtrangdon=tinhtrangdon;
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTinhtrangdon (){
        return tinhtrangdon;
    }

    public void setTinhtrangdon(String tinhtrangdon) {
        this.tinhtrangdon = tinhtrangdon;
    }
}


