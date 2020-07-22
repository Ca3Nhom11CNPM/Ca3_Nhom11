package vn.edu.nlu.fit.Admin;

public class Nguoidung {
    String maTK;
    String name;
    String email;
    String password;
    String fullname;
    String quyen;



    public Nguoidung(String maTK) {
        this.maTK =maTK;
    }

    public Nguoidung(String maTK, String name, String email, String password, String fullname, String quyen) {
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

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getQuyen() {
        return this.quyen;
    }
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }


}
