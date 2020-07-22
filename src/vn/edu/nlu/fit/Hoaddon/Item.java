package vn.edu.nlu.fit.Hoaddon;

import vn.edu.nlu.fit.Model.Product;

public class Item {
    private Product product;
    private int soLuong;

    public Item() {
    }

    public Item(Product product, int soLuong) {
        this.product = product;
        this.soLuong = soLuong;
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
}
