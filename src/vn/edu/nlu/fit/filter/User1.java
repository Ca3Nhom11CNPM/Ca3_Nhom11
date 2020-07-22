package vn.edu.nlu.fit.filter;
public class User1 {
    private int maTK;
    private String name;
    private String email;
    private String password;
    private  String fullname;
    private int quyen;
    private int status;

    public User1() {
    }

    public User1(int maTK, String name, String email, String password, String fullname, int quyen, int status) {
        this.maTK = maTK;
        this.name = name;

        this.email = email;
        this.password = password;
        this.fullname = fullname;
        this.quyen = quyen;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMaTK() {
        return maTK;
    }

    public void setMaTK(int maTK) {
        this.maTK = maTK;
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

    public int getQuyen() {
        return quyen;
    }

    public void setQuyen(int quyen) {
        this.quyen = quyen;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}