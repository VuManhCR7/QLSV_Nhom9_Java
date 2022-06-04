/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLySinhVien.Models;

/**
 *
 * @author Windows
 */
public class DangNhap {
    private String maTaiKhoan;
    private String tenTaiKhoan;
    private String matKhau;
    private String quyen;

    public DangNhap(String maTaiKhoan, String tenTaiKhoan, String matKhau, String quyen) {
        this.maTaiKhoan = maTaiKhoan;
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
        this.quyen = quyen;
    }

    public DangNhap() {
    }

    public String getMaTaiKhoan() {
        return maTaiKhoan;
    }

    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public String getQuyen() {
        return quyen;
    }

    public void setMaTaiKhoan(String maTaiKhoan) {
        this.maTaiKhoan = maTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }
    
    
}
