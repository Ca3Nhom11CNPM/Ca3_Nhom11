package vn.edu.nlu.fit.Hoaddon;

import vn.edu.nlu.fit.Model.Product;
import vn.edu.nlu.fit.filter.User2;

import java.sql.Timestamp;

public class Chitiethoadon {
    private int id;
    private Hoadon hoadon;
    private Product product;
    private int soLuong;
    private double donGia;


    public Chitiethoadon(int id, Hoadon hoadon, Product product, int soLuong, double donGia) {
        this.id = id;
        this.hoadon = hoadon;
        this.product = product;
        this.soLuong = soLuong;
        this.donGia = donGia;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Hoadon getHoadon() {
        return hoadon;
    }

    public void setHoadon(Hoadon hoadon) {
        this.hoadon = hoadon;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getDonGia() {
        return donGia;
    }

    public void setDonGia(double donGia) {
        this.donGia = donGia;
    }

}
