package vn.edu.nlu.fit.filter;

public interface TaiKhoanDao {
    //kiem tra tai khoan da ton tai chua
    public boolean kiemTraTaiKhoan(String userName);
    //them tai khoan
    public void themTaiKhoan(User1 user);
    //kiểm tra đăng nhập
    public boolean checkDangNhap(String userName, String password);

    public boolean checkDangNhapAd(String userName, String password);

    public User1 getTaiKhoan(String userName);
    public User1 getTaiKhoanByUserName(String userName);
}
