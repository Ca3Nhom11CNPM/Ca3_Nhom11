package vn.edu.nlu.fit.Hoaddon;

import vn.edu.nlu.fit.filter.User1;
import java.sql.Timestamp;
public class Hoadon {
    int id;
    String mahoadon;
   String user;
    String sodienthoai;
    String diachi;
    String hinhthuc;
    Timestamp ngaymua;
    String  tinhtrangdon ;

    public Hoadon ( String tinhtrangdon){

        this.tinhtrangdon =tinhtrangdon;
    }
    public Hoadon (int id){
        this.id =id;
    }
public Hoadon (int id,String mahoadon, String user, String sodienthoai, String diachi , String hinhthuc, Timestamp ngaymua, String tinhtrangdon ){
    this.id=id;
    this.mahoadon = mahoadon;
    this.user=user;
    this.sodienthoai=sodienthoai;
    this.diachi=diachi;
    this.hinhthuc=hinhthuc;
    this.ngaymua=ngaymua;
    this.tinhtrangdon=tinhtrangdon;
}


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMahoadon() {
        return mahoadon;
    }

    public void setMahoadon(String maHoaDon) {
        this.mahoadon = maHoaDon;
    }

    public String getUser1() {
        return user;
    }

    public void setUser1(String user) {
        this.user = user;
    }

    public String getSodienthoai() {
        return sodienthoai;
    }

    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public Timestamp getNgaymua() {
        return ngaymua;
    }

    public void setNgaymua(Timestamp ngaymua) {
        this.ngaymua = ngaymua;
    }

    public String getHinhthuc() {
        return hinhthuc;
    }

    public void setHinhthuc(String hinhthuc) {
        this.hinhthuc = hinhthuc;
    }

    public String getTinhtrangdon (){
        return tinhtrangdon;
    }

    public void setTinhtrangdon(String tinhtrangdon) {
        this.tinhtrangdon = tinhtrangdon;
    }
}


