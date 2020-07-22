package vn.edu.nlu.fit.Admin;

public class KhachHang {
    String maTK;
    String name;
    String email;
    String password;
    String fullname;
    String quyen;

    public KhachHang() {
    }

    public KhachHang(String maTK) {
        this.maTK =maTK;
    }

    public KhachHang(String maTK, String name, String email, String password, String fullname, String quyen) {
        this.maTK = maTK;
        this.name = name;
        this.email = email;
        this.password = password;
        this.fullname = fullname;
        this.quyen = quyen;
    }

    public String getMaTK() {
        return this.maTK;
    }

    public void setMaTK(String maTK) {
        this.maTK = maTK;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }


    public String getQuyent() {
        return this.quyen;
    }

    public void setQuyen(String active) {
        this.quyen = quyen;
    }

}
