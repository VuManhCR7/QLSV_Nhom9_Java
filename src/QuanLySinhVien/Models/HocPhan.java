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
public class HocPhan {
    private String maHP;
    private String tenHP;
    private float soTinChi;
    private int maGV;

    public HocPhan(String maHP, String tenHP, float soTinChi, int maGV) {
        this.maHP = maHP;
        this.tenHP = tenHP;
        this.soTinChi = soTinChi;
        this.maGV = maGV;
    }

    public HocPhan() {
    }

    public String getMaHP() {
        return maHP;
    }

    public String getTenHP() {
        return tenHP;
    }

    public float getSoTinChi() {
        return soTinChi;
    }

    public int getMaGV() {
        return maGV;
    }

    public void setMaHP(String maHP) {
        this.maHP = maHP;
    }

    public void setTenHP(String tenHP) {
        this.tenHP = tenHP;
    }

    public void setSoTinChi(float soTinChi) {
        this.soTinChi = soTinChi;
    }

    public void setMaGV(int maGV) {
        this.maGV = maGV;
    }
    
    
    
}
