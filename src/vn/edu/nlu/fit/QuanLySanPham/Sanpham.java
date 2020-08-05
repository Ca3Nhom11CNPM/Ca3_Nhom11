package vn.edu.nlu.fit.QuanLySanPham;

public class Sanpham {
    String id;
    String name;
    String type;
    String price;
    String quatity;
    String img;
    String des;
    String congty;
    String tacgia;
    String ngayxuatban;
    String kichthuoc;
    String nxb;
    String loaibia;
    String sotrang;
    String masp;
    String lower;
    String active;

    public Sanpham() {
    }

    public Sanpham (String id){
        this.id =id;
    }


    public Sanpham(String id, String name, String type , String price, String quatity, String img,String des, String congty,String tacgia, String ngayxuatban,String kichthuoc, String nxb,String loaibia, String sotrang,String masp, String lower , String active) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.price = price;
        this.quatity = quatity;
        this.img = img;
        this.des = des;
        this.congty = congty;
        this.tacgia = tacgia;
        this.ngayxuatban = ngayxuatban;
        this.kichthuoc = kichthuoc;
        this.nxb = nxb;
        this.loaibia = loaibia;
        this.sotrang = sotrang;
        this.masp = masp;
        this.lower = lower;
        this.active = active;

    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }
    public String getPrice() {
        return this.price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getQuatity() {
        return this.quatity;
    }

    public void setQuatity(String quatity) {
        this.quatity = quatity;
    }
    public String getImg() {
        return this.img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    public String getDes() {
        return this.des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getCongty() {
        return this.congty;
    }

    public void setCongty(String congty) {
        this.congty = congty;
    }
    public String getTacgia() {
        return this.tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }
    public String getNgayxuatban() {
        return this.ngayxuatban;
    }

    public void setNgayxuatban(String ngayxuatban) {
        this.ngayxuatban = ngayxuatban;
    }

    public String getKichthuoc() {
        return this.kichthuoc;
    }

    public void setKichthuoc(String kichthuoc) {
        this.kichthuoc = kichthuoc;
    }
    public String getNxb() {
        return this.nxb;
    }

    public void setNxb(String nxb) {
        this.nxb = nxb;
    }
    public String getLoaibia() {
        return this.loaibia;
    }

    public void setLoaibia(String loaibia) {
        this.loaibia = loaibia;
    }

    public String getSotrang() {
        return this.sotrang;
    }

    public void setSotrang(String sotrang) {
        this.sotrang = sotrang;
    }

    public String getMasp() {
        return this.masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public String getLower() {
        return this.lower;
    }

    public void setLower(String lower) {
        this.lower = lower;
    }
    public String getActive() {
        return this.active;
    }

    public void setActive(String active) {
        this.active = active;
    }


}
