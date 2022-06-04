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
public class HocPhan_Lop {
    private int maLop;
    private String maHP;
    private int hocKy;

    public HocPhan_Lop(int maLop, String maHP, int hocKy) {
        this.maLop = maLop;
        this.maHP = maHP;
        this.hocKy = hocKy;
    }

    public HocPhan_Lop() {
    }

    public int getMaLop() {
        return maLop;
    }

    public String getMaHP() {
        return maHP;
    }

    public int getHocKy() {
        return hocKy;
    }

    public void setMaLop(int maLop) {
        this.maLop = maLop;
    }

    public void setMaHP(String maHP) {
        this.maHP = maHP;
    }

    public void setHocKy(int hocKy) {
        this.hocKy = hocKy;
    }
    
    
}
